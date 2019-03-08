<?php 
header("Content-Type: application/json; charset=UTF-8");
require_once $_SERVER['DOCUMENT_ROOT']. '/PHP/TD02/exo2/people.class.php';

$method = strtolower($_SERVER['REQUEST_METHOD']);

if ($method !== 'get') {
	http_response_code(405);
	echo json_encode(array('message' => 'This method is not allowed.'));
	exit();
}

http_response_code(200);
    if((isset($_GET['lastname'])) && (isset($_GET['firstname']) && (isset($_GET['birthday'])))) {
        $people = new People($_GET['lastname'],$_GET['firstname'],$_GET['birthday']);
        echo (json_encode($people));
    }

    else {
        http_response_code(422);
        echo json_encode(array('message' => 'Empty values'));
        exit();
    }
exit();

?>