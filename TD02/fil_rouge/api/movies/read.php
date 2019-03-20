<?php
/*
 *  Show all movies
 */

header("Content-Type: application/json; charset=UTF-8");

//check HTTP method
$method = strtolower($_SERVER['REQUEST_METHOD']);

if ($method !== 'get') {
	http_response_code(405);
	echo json_encode(array('message' => 'This method is not allowed.'));
	exit();
}

// include data
include_once "../data/data_movies.php";

// -- TODO - response

http_response_code(200);
$array = [];

foreach ($movies as $movie) {
    if($movie != NULL) {
        array_push($array,$movie);
    }
}

echo (json_encode($array));
exit();
?>