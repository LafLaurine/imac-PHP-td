<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Hello world !</title>
</head>
<body>
    <?php 
    $prenom = "<h1> Laurine </h1>";
    $nom = "<h1> Lafontaine </h1>";
    $ville = "<h2> Arnouville </h2>";
    $age = 19;
 
    echo $prenom, $nom, $ville; 
    if($age > 1)
    {
        echo "<h2> J'ai " . $age . " ans </h2>";
    }
    else
    {
        echo "<h2> J'ai " . $age . " an </h2>";
    }

    $personne = array(
        "prenom" => $prenom,
        "nom" => $nom,
        "ville" => $ville,
        "age" => $age
    );
    /*var_dump($personne);*/

    $week = ["Lundi", "Mardi", "Veille de race", "Jeudimac", "Lendemain de race", "Samedi", "Dimanche"];
    print("Les jours de la semaine : ");
    
    $i = 0;
    $total = count($week);
    foreach($week as $day) {
        echo $day;
        $i++;
        if($i < $total)
        echo ", ";
    }

    $personnes = array(
        $personne,
        $personne
    );

    foreach($personnes as $personne){
        echo "<h1> Personne : </h1>";
        echo "<ul> Prénom :";
        echo "<li style='list-style: none;'>" . $prenom . "</li></ul>";
        echo "<ul> Nom :";
        echo "<li style='list-style: none;'>" . $nom . "</li></ul>";
        echo "<ul> Ville :";
        echo "<li style='list-style: none;'>" . $ville . "</li></ul>";
        echo "<ul> Age :";
        echo "<li style='list-style: none;'>" . $age . "</li></ul>";
    }

    if (empty($personnes)) {
        echo "Il n'y a personne";
    }
    
    ?>
</body>
</html>