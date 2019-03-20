<?php
/*
 *  Create a new movie. Must show a message with movie data if success
 */

// headers

// -- TO DO - check HTTP method
$method = strtolower($_SERVER['REQUEST_METHOD']);

// include data
include_once "../data/data_movies.php";

http_response_code(200);

if(isset($_POST['title']) && isset($_POST['date']) && isset($_POST['genre']) && isset($_POST['director'])){
    $array = array('title' => $_POST['title'],'date' => $_POST['date'],'genre' => $_POST['genre'],'director' => $_POST['director']);

}
print_r($array);
//$array = json_encode(array('movie' => $array));


exit();

