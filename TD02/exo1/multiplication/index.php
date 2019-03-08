<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Multiplication</title>
</head>
<body>

<form method="POST" action="index.php">
    <input placeholder="nombre" name="nb" type="text"> 
    <input value="Submit" name="submit" type="submit">   
</form>
    <?php 
    if(isset($_POST['nb']) && isset($_POST['submit']))
    {
        if(!empty($_POST['nb'])){
            $nb = $_POST['nb'];
        }

        echo 'Table de multiplication de '.$nb.'<br>';
        for ($i = 1; $i <= 10; $i++)
        {
            echo $nb.' x '.$i.' = '.$nb*$i.'<br>';
        }
    }
    
    ?>
</body>
</html>