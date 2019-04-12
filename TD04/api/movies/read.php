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
include_once "../data/MyPDO.imac-movies.include.php";

//response

//plusieurs query ! ATTENTION A NE PAS OUBLIER DE FAIRE LES INNER JOIN
//on execute le movies avant les autres

http_response_code(200);
$id = 0;

$stmt_movie = MyPDO::getInstance()->prepare(<<<SQL
	SELECT id, title, release_date
	FROM movies
SQL
);


$data = array();
$stmt_movie->execute();

while (($row = $stmt_movie->fetch(PDO::FETCH_ASSOC))) {
	$movies = [];
	$movies['genres'] = [];
	$movies['countries'] = [];
	$movies['directors'] = [];
	$movies['actors'] = [];

	$id = $row['id'];
	array_push($movies,$row);

	$stmt_genre = MyPDO::getInstance()->prepare(<<<SQL
	SELECT DISTINCT name
	FROM genres
	INNER JOIN moviegenres ON moviegenres.id_genre = genres.id
	INNER JOIN movies ON moviegenres.id_movie = movies.id
	WHERE movies.id = $id
SQL
);

	$stmt_countries = MyPDO::getInstance()->prepare(<<<SQL
		SELECT DISTINCT name
		FROM countries
		INNER JOIN moviecountries ON moviecountries.code_country = countries.code
		INNER JOIN movies ON moviecountries.id_movie = movies.id
		WHERE movies.id = $id
SQL
);

	$stmt_directors = MyPDO::getInstance()->prepare(<<<SQL
		SELECT DISTINCT concat(firstname,' ', lastname) As Director
		FROM casts
		INNER JOIN roles on roles.id_cast = casts.id
		INNER JOIN movies on roles.id_movie = movies.id
		INNER JOIN jobs ON roles.id_job = jobs.id
		WHERE jobs.name="director" AND movies.id = $id
SQL
);

	$stmt_actors = MyPDO::getInstance()->prepare(<<<SQL
		SELECT DISTINCT concat(firstname,' ', lastname) As Actors, role
		FROM casts
		INNER JOIN roles on roles.id_cast = casts.id
		INNER JOIN movies on roles.id_movie = movies.id
		INNER JOIN jobs ON roles.id_job = jobs.id
		WHERE jobs.name="actor" AND movies.id = $id
SQL
);
	$stmt_genre->execute();
	while (($row_2 = $stmt_genre->fetchAll(PDO::FETCH_ASSOC))) {
		array_push($movies['genres'],$row_2);
	}
	$stmt_countries->execute();
	while (($row_3 = $stmt_countries->fetchAll(PDO::FETCH_ASSOC))) {
		array_push($movies['countries'],$row_3);
	}
	$stmt_directors->execute();
	while (($row_4 = $stmt_directors->fetchAll(PDO::FETCH_ASSOC))) {
		array_push($movies['directors'],$row_4);
	}
	$stmt_actors->execute();
	while (($row_5 = $stmt_actors->fetchAll(PDO::FETCH_ASSOC))) {
		array_push($movies['actors'],$row_5);
	}

	array_push($data,$movies);
}

echo json_encode($data);
exit();
?>