<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Fil rouge !</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

    <h1 id="title">MOVIES</h1>
    <div id="grid">
    <?php 
    require_once $_SERVER['DOCUMENT_ROOT']. '/PHP/TD01/exo4/data/data_movies.php';
    //require_once $_SERVER['DOCUMENT_ROOT']. '/PHP/TD01/exo4/movie_list.php';


    foreach($movies as $movie){
        echo "<h3 class='movie'>".$movie['title']."</h3>";

        if(is_string($movie['genre'])){
            $genre = $movie['genre'];
            echo "<ul>";
            echo "<li class='movie-list'>".$genre."</li>";
            if($genre == "Comedy")
            {
                echo "<li>LOL C 1 KOMEDIE</li>";
            }
        }
       else if(is_array($movie['genre'])){
            if(isset($movie['genre'])){
                echo "<ul>";
                foreach ($movie['genre'] as $genre){
                    echo "<li class='movie-list'>".$genre."</li>";
                    if($genre == "Comedy")
                    {
                        echo "<li>LOL C 1 KOMEDIE</li>";
                    }
                }
        }
    }

        $date = date($movie['date']);
        echo "<li class='movie-list'>Date : ".$date."</li>";
        $dates = explode("-", $date);  
        $month = $dates[1];
        if($month == "02")
        {
            echo "<li>LOL C EN FEVRIER</li>";
        }


        if(is_string($movie['director'])){
            echo "<li> Director : ". $movie['director'] ."</li>";
        }
       else if(is_array($movie['director'])){
            if(isset($movie['director'])){
                foreach ($movie['director'] as $director){
                    echo "<li> Director : ". $director ."</li></br>";
                }
        }
    
    }
    echo"</ul>";
}
    //render_movie_list($movies, "Drama","04");

    ?>
    </div>
</body>
</html>