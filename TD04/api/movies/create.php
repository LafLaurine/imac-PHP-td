<?php
/*
 *  Create a new movie. Must show a message with movie data if success
 */

// headers
header("Content-Type: application/json; charset=UTF-8");

//check HTTP method
$method = strtolower($_SERVER['REQUEST_METHOD']);

// include data
include_once "../data/MyPDO.imac-movies.include.php";

//response
http_response_code(200);
$id_genre = [];
$input = file_get_contents('php://input');
$json_obj = json_decode($input,true);

if ($input == '{}') {
	echo json_encode(array("error" => "Missing params"));
}
else {
    $json_obj = json_decode($input,true);
    $title = $json_obj['title'];
    $release_date = $json_obj['date'];

    $stmt_insert_movie = MyPDO::getInstance()->prepare("INSERT INTO movies (`title`, `release_date`) VALUES (:title, :release_date)");
    $stmt_insert_movie->bindParam(':title', $title);
    $stmt_insert_movie->bindParam(':release_date', $release_date);
    $stmt_insert_movie->execute();

    //recupère le dernier id inséré
    $id_movie = MyPDO::getInstance()->lastInsertId();

    $genre = $json_obj['genre'];
    $stmt_check_genre = MyPDO::getInstance()->prepare("SELECT id FROM genres WHERE name=:genre");
    $stmt_check_genre->bindParam(":genre", $genre);
    $stmt_check_genre->execute();
    while (($row = $stmt_check_genre->fetch(PDO::FETCH_ASSOC))) {
        $id_genre = $row['id'];
    }

    $stmt_insert_moviegenres = MyPDO::getInstance()->prepare("INSERT INTO moviegenres (`id_movie`, `id_genre`) VALUES (:id_movie, :id_genre)");
    $stmt_insert_moviegenres->bindParam(':id_movie', $id_movie);
    $stmt_insert_moviegenres->bindParam(':id_genre', $id_genre);
    $stmt_insert_moviegenres->execute();
	$resp = array("title" => $title, "release-date" => $release_date, "genre" => $genre, "director" => $json_obj['director']);
	echo json_encode($resp);
}
exit();