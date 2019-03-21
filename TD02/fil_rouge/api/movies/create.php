<?php
/*
 *  Create a new movie. Must show a message with movie data if success
 */

// headers
header("Content-Type: application/json; charset=UTF-8");

//check HTTP method
$method = strtolower($_SERVER['REQUEST_METHOD']);
if ($method !== 'post') {
	http_response_code(405);
	echo json_encode(array('message' => 'This method is not allowed.'));
	exit();
}

// include data
include_once "../data/data_movies.php";

//response
http_response_code(200);
$input = file_get_contents('php://input');
if ($input == '{}') {
	echo json_encode(array("error" => "Missing params"));
}
else {
	$json_obj = json_decode($input,true);
	$resp = array("title" => $json_obj['title'], "date" => $json_obj['date'], "genre" => $json_obj['genre'], "director" => $json_obj['director']);
	echo json_encode($resp);
}
exit();