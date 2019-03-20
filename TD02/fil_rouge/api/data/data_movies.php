<?php
/*
Sources: 
  * SensCritique - Top des meilleurs films en 2018
    https://www.senscritique.com/top/resultats/Les_meilleurs_films_de_2018/1757790
  * IMDB for genres
*/

$movies = array(
	array("title"=>"Three Billboards Outside Ebbing, Missouri", "genre"=>array("Comedy", "Crime", "Drama"), "date"=>"2018-01-17", "director"=>"Martin McDonagh"),
	array("title"=>"Spider-Man: Into the Spider-verse", "genre"=>array("Animation", "Action", "Adventure"), "date"=>"2018-12-12", "director"=>array("Bob Persichetti", "Peter Ramsey", "Rodney Rothman")), 
	array("title"=>"Isle of Dogs", "genre"=>array("Animation", "Adventure", "Comedy"), "date"=>"2018-04-11", "director"=>"Wes Anderson"),
	array("title"=>"Phantom Thread", "genre"=>array("Drama", "Romance"), "date"=>"2018-02-14", "director"=>"Paul Thomas Anderson"),
	array("title"=>"Ready Player One", "genre"=>array("Action", "Adventure", "Science-Fiction"), "date"=>"2018-03-28", "director"=>"Steven Spielberg"),
	array("title"=>"First Man", "genre"=>array("Biography", "Drama", "History"), "date"=>"2018-10-17", "director"=>"Damien Chazelle"),
	array("title"=>"Jusqu'à la garde", "genre"=>"Drama", "date"=>"2018-02-07", "director"=>"Xavier Legrand"),
	array("title"=>"The Shape of Water", "genre"=>array("Adventure", "Drama", "Fantasy"), "date"=>"2018-02-21", "director"=>"Guillermo del Toro"),
	array("title"=>"Hostiles", "genre"=>array("Adventure", "Drama", "Western"), "date"=>"2018-03-14", "director"=>"Scott Cooper"),
	array("title"=>"Under the Silver Lake", "genre"=>array("Comedy", "Crime", "Drama"), "date"=>"2018-08-08", "director"=>"David Robert Mitchell"),
	array("title"=>"Call Me by Your Name", "genre"=>array("Drama", "Romance"), "date"=>"2018-02-28", "director"=>"Luca Guadagnino"),
	array("title"=>"Avengers: Infinity War", "genre"=>array("Action", "Adventure", "Fantasy"), "date"=>"2018-04-25", "director"=>array("Anthony Russo", "Joe Russo")),
	array("title"=>"Mektoub, My Love: Canto uno", "genre"=>array("Comedy", "Romance"), "date"=>"2018-03-21", "director"=>"Abdellatif Kechiche"),
	array("title"=>"Manbiki kazoku", "genre"=>array("Crime", "Drama"), "date"=>"2018-12-12", "director"=>"Hirokazu Koreeda"),
	array("title"=>"Mission: Impossible - Fallout", "genre"=>array("Action", "Adventure", "Thriller"), "date"=>"2018-08-01", "director"=>"Christopher McQuarrie"),
	array("title"=>"Incredibles 2", "genre"=>array("Animation", "Action", "Adventure"), "date"=>"2018-07-04", "director"=>"Brad Bird"),
	array("title"=>"The House That Jack Built", "genre"=>array("Crime", "Drama", "Horror"), "date"=>"2018-10-17", "director"=>"Lars von Trier"),
	array("title"=>"Climax", "genre"=>array("Drama", "Horror", "Music"), "date"=>"2018-09-19", "director"=>"Gaspar Noé"),
	array("title"=>"Hereditary", "genre"=>array("Drama", "Horror", "Mystery"), "date"=>"2018-06-13", "director"=>"Ari Aster"),
	array("title"=>"Leto", "genre"=>array("Biography", "Music", "Romance"), "date"=>"2018-12-05", "director"=>"Kirill Serebrennikov"),
	array("title"=>"Beoning", "genre"=>array("Drama", "Mystery"), "date"=>"2018-08-29", "director"=>"Lee Chang-Dong"),
	array("title"=>"BlacKkKlansman", "genre"=>array("Biography", "Crime", "Drama"), "date"=>"2018-08-22", "director"=>"Spike Lee"),
	array("title"=>"Bohemian Rhapsody", "genre"=>array("Biography", "Drama", "Music"), "date"=>"2018-10-31", "director"=>"Bryan Singer"),
	array("title"=>"Roma", "genre"=>"Drama", "date"=>"2018-12-14", "director"=>"Alfonso Cuarón"),
	array("title"=>"Le Monde est à toi", "genre"=>array("Comedy", "Crime"), "date"=>"2018-08-15", "director"=>"Romain Gavras"),
	array("title"=>"Les Garçons sauvages", "genre"=>array("Adventure", "Drama", "Fantasy"), "date"=>"2018-02-28", "director"=>"Bertrand Mandico"),
	array("title"=>"The Post", "genre"=>array("Biography", "Drama", "History"), "date"=>"2018-01-24", "director"=>"Steven Spielberg"),
	array("title"=>"The Sisters Brothers", "genre"=>array("Adventure", "Comedy", "Crime"), "date"=>"2018-09-19", "director"=>"Jacques Audiard"),
	array("title"=>"I, Tonya", "genre"=>array("Biography", "Comedy", "Drama"), "date"=>"2018-02-21", "director"=>"Craig Gillespie"),
	array("title"=>"Au poste !", "genre"=>"Comedy", "date"=>"2018-07-04", "director"=>"Quentin Dupieux"),
	array("title"=>"Fight Club", "genre"=>"Drama", "date"=>"1999-09-10", "director"=>"David Fincher"),
	array("title"=>"Pulp Fiction", "genre"=>array("Crime", "Drama"), "date"=>"1994-09-10", "director"=>"Quentin Tarantino"),
	array("title"=>"2001: A Space Odyssey", "genre"=>array("Adventure", "Science-Fiction"), "date"=>"1968-04-03", "director"=>"Stanley Kubrick"),
	array("title"=>"Blade Runner", "genre"=>array("Action", "Adventure", "Crime"), "date"=>"1982-06-25", "director"=>"Ridley Scott"),
	array("title"=>"The Godfather", "genre"=>array("Crime", "Drama"), "date"=>"1972-03-24", "director"=>"Francis Ford Coppola"),
	array("title"=>"The Dark Knight", "genre"=>array("Action", "Crime", "Drama"), "date"=>"2008-07-16", "director"=>"Christopher Nolan"),
	array("title"=>"Forrest Gump", "genre"=>array("Drama", "Romance"), "date"=>"1994-07-06", "director"=>"Robert Zemeckis"),
	array("title"=>"The Lord of the Rings: The Return of the King", "genre"=>array("Adventure", "Drama", "Fantasy"), "date"=>"2003-12-01", "director"=>"Peter Jackson"),
	array("title"=>"Interstellar", "genre"=>array("Adventure", "Drama", "Science-Fiction"), "date"=>"2014-11-05", "director"=>"Christopher Nolan"),
	array("title"=>"Il Buono, il Brutto, il Cattivo", "genre"=>"Western", "date"=>"1966-12-23", "director"=>"Sergio Leone"),
	array("title"=>"Inception", "genre"=>array("Action", "Adventure", "Science-Fiction"), "date"=>"2010-07-14", "director"=>"Christopher Nolan"),
	array("title"=>"A Clockwork Orange", "genre"=>array("Crime", "Drama", "Science-Fiction"), "date"=>"1971-12-19", "director"=>"Stanley Kubrick"),
	array("title"=>"Apocalypse Now", "genre"=>array("Drama", "War"), "date"=>"1979-08-15", "director"=>"Francis Ford Coppola"),
	array("title"=>"The Lord of the Rings: The Fellowship of the Ring", "genre"=>array("Adventure", "Drama", "Fantasy"), "date"=>"2001-12-19", "director"=>"Peter Jackson"),
	array("title"=>"Star Wars Episode V: The Empire Strikes Back", "genre"=>array("Action", "Adventure", "Fantasy"), "date"=>"1980-05-21", "director"=>"Irvin Kershner"),
	array("title"=>"À Croquer", "genre"=>array("Drama", "Romance"), "date"=>"2019-01-12", "director"=>array("Johan Boyer", "Clélie Chassignet")),
	array("title"=>"La Reine de Coeur", "genre"=>array("Drama", "Romance"), "date"=>"2019-01-14", "director"=>"Mélissande Gaillot"),
	array("title"=>"Inside", "genre"=>array("Drama", "Mystery", "Science-Fiction"), "date"=>"2019-01-09", "director"=>"Julien Haudegond"),
	array("title"=>"SHE", "genre"=>array("Music", "Romance"), "date"=>"2019-01-13", "director"=>array("Elisa Ciavaldini", "Cyrielle Lassarre", "Océane Riosset", "Roxane Vallée", "Sarah Veysset")),
	array("title"=>"WOOPS", "genre"=>array("Action", "Comedy"), "date"=>"2019-01-13", "director"=>array("Yoann Koeppel aka Cape du Malaise", "Zoé Durand aka Gilet Jaune")),
	array("title"=>"Immersion", "genre"=>array("Drama", "Mystery"), "date"=>"2019-01-15", "director"=>"Eva Benharira")
);

?>