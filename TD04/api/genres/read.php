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
include_once "../data/MyPDO.imac-movies.include.php";

// response status
http_response_code(200);

$stmt = MyPDO::getInstance()->prepare(<<<SQL
	SELECT name
	FROM genres;
SQL
);

$stmt->execute();
$genres = [];

while (($row = $stmt->fetch(PDO::FETCH_ASSOC))) {
	array_push($genres,$row['name']); 
}
sort($genres);
echo json_encode($genres);
exit();
