<?php
/*
 *  Show movies from filters
 */

// headers
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

// check params then filter
http_response_code(200);
$array = [];
foreach ($movies as $movie) {
  if($movie != NULL) {
    if(isset($_GET['genre']) &&($_GET['genre'] === "on")){
      array_push($array,$movie);
    }
    
    else {
      if(isset($_GET['title']) && !preg_match("/{$_GET['title']}/i", $movie['title']))
      continue;

      if(isset($_GET['date'])) {
        $date = date($movie['date']);
        $date1 = new DateTime($date);
        $date2 = new DateTime($_GET['date']);
        if($date1!=$date2)
        continue;
      }
      
      if(isset($_GET['genre'])) {
        if(is_string($movie['genre'])) {
          if($movie['genre'] != $_GET['genre']) {
            continue;
          }
        }
        else if(is_array($movie['genre'])) {
          if(!in_array($_GET['genre'],$movie['genre'])) {
            continue;
          }
        }
      }
      
      if(isset($_GET['director'])) 
      {
        if(is_string($movie['director'])) {
          if(!preg_match("/{$_GET['director']}/i", $movie['director'])) {
            continue;
          }
        }
        else if(is_array($movie['director'])) {   
          if(!preg_grep("/{$_GET['director']}/i", $movie['director'])) {
            continue;
          }
        }
      }
      
      array_push($array,$movie);
    }
  }
}

if(empty($array))
{
  $mess = array("error" => "No movie found");
  echo (json_encode($mess));
}
else {
  echo (json_encode($array));
}
exit()
?>