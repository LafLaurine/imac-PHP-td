<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Fil rouge !</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

    <h1>MOVIES</h1>
    <?php 
    require_once $_SERVER['DOCUMENT_ROOT']. '/PHP/TD01/exo4/data/data_movies.php';
    //require_once $_SERVER['DOCUMENT_ROOT']. '/PHP/TD01/exo4/movie_list.php';


    function is_comedy($var)
    {
        if($var == "comedy")
        {
            echo "LOL";
        }
    }

    foreach($movies as $movie){
        echo $movie['title'];

        if(is_string($movie['genre'])){
            $genre = $movie['genre'];
            echo $genre;
            is_comedy($genre);
        }
       else if(is_array($movie['genre'])){
            if(isset($movie['genre'])){
                foreach ($movie['genre'] as $genre){
                    echo $genre;
                    is_comedy($genre);
                }
        }
    }

        $date = date($movie['date']);
        echo $date;
        $dates = explode("-", $date);  
        $month = $dates[1];
        if($month == "02")
        {
            echo "FEVRIER";
        }


        if(is_string($movie['director'])){
            echo $movie['director'];
        }
       else if(is_array($movie['director'])){
            if(isset($movie['director'])){
                foreach ($movie['director'] as $director){
                    echo $director;
                }
        }
    
    }
    }

   // render_movie_list($movies, "Drama","04");


    ?>
</body>
</html>