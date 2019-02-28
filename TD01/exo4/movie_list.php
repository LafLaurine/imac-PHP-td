<?php 

require_once $_SERVER['DOCUMENT_ROOT']. '/PHP/TD01/exo4/data/data_movies.php';

function render_movie_list ($movies, $genre, $month) {
  foreach ($movies as $movie) {
    if($movie != NULL) {

      $date = date($movie['date']);
      $dates = explode("-", $date);  
      $months = $dates[1];

      if($months == $month) {
        $current_month = "green";
        $emoji ="<i class='em em-arrow_left'></i>";
      }

      else {
        $current_month = "";
        $emoji = "";
      }
      
      if(is_string($movie['genre'])) {
        if($movie['genre'] = $genre) {
          $current_genre = "red";
          $emoji ="<i class='em em-arrow_left'></i>";
        }
        else {
          $current_genre = "";
          $emoji = "";
        }
      }
      
      else if(is_array($movie['genre'])) {
            if(in_array($genre,$movie['genre'])) {
              $current_genre = "red";
              $emoji ="<i class='em em-arrow_left'></i>";
            }
            else {
              $current_genre = "";
              $emoji = "";
            }
      }

      echo "<h3 class='movie'>".$movie['title']." <span class=".$current_month.">(".$date.")" ." ". $emoji . "</span></h3>";
      echo "<ul>";

      if(is_array($movie["genre"])) {
        echo "<li class='movie-list'>Genre : <span class=".$current_genre.">".implode(" ",$movie['genre']). " " . $emoji . "</span></li>";
      }
  
      else {
        echo "<li class='movie-list'>Genre : <span class=".$current_genre.">".$movie['genre']. " " . $emoji. "</span></li>";
      }
      echo "</ul>";



      
    }
  } 
}
?>



<!doctype html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Le Fil ROUGE</title>
    <link rel="stylesheet" href="css/styles.css">
    <link href="https://afeld.github.io/emoji-css/emoji.css" rel="stylesheet">
  </head>
  <body>

    <h1 id="title"><i class="em em-film_frames"></i> Movies <i class="em em-film_frames"></i></h1>
    <div id="grid">
      <?php 
      render_movie_list($movies, "Drama","04");
      ?>
    </div>

  </body>
</html>