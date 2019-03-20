<?php
/*
 *  Show all genres in alphabetical order
 */

// headers
header("Content-Type: application/json; charset=UTF-8");

// check HTTP method
$method = strtolower($_SERVER['REQUEST_METHOD']);

if ($method !== 'get') {
	http_response_code(405);
	echo json_encode(array('message' => 'This method is not allowed.'));
	exit();
}

// include data
include_once "../data/data_genres.php";

// response status
http_response_code(200);

// show sorted array
sort($genres);
echo json_encode($genres);
exit();
