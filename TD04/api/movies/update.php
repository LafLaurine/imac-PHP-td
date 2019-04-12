<?php
/*
 *  Update a movie. Must show a message with movie new data if success
 */

// headers
header("Content-Type: application/json; charset=UTF-8");

//check HTTP method
$method = strtolower($_SERVER['REQUEST_METHOD']);
if ($method !== 'put') {
	http_response_code(405);
	echo json_encode(array('message' => 'This method is not allowed.'));
	exit();
}
//include data
include_once "../data/MyPDO.imac-movies.include.php";

$input = file_get_contents('php://input');
if ($input == '{}') {
	echo json_encode(array("error" => "Missing params"));
}

else {
	$json_obj = json_decode($input,true);
	$title = $json_obj['title'];
	$id = $json_obj['id'];

	$stmt_update_movie = MyPDO::getInstance()->prepare("UPDATE `movies` SET title = :title WHERE id = :id");
	$stmt_update_movie->bindParam(':title', $title);
	$stmt_update_movie->bindParam(':id', $id);
	$stmt_update_movie->execute();
	$resp = array("id" => $id, "title" => $title);
	if(count($resp)>0) {
		echo json_encode($resp);
	}
	else {
		echo json_encode(array("message" => "Cannot found movie with id ".$id));
	}
}


exit();
