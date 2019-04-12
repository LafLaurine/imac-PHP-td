<?php
/*
 *  Delete a movie. Must show a message with deleted movie data if success
 */

// headers
header("Content-Type: application/json; charset=UTF-8");

//check HTTP method
$method = strtolower($_SERVER['REQUEST_METHOD']);
if ($method !== 'delete') {
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
	$id = $json_obj|['id'];
	
	$stmt_delete_movie = MyPDO::getInstance()->prepare("DELETE FROM `movies` WHERE id=:id");
	$stmt_delete_movie->bindParam(":id", $id);
	$stmt_delete_movie->execute();
	$resp = array("id" => $id);
	if(count($resp)>0) {
		echo json_encode("Movie with:".$resp."deleted");
	}
	else {
		echo json_encode(array("message" => "Cannot delete movie with id ".$id));
	}
}
exit();

