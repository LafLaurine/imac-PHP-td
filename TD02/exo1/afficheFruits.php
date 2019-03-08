<?php 
if(isset($_GET['submit'])) {
    if(!empty($_GET['fruits'])){
        $total = count($_GET['fruits']);
        $i = 0;
        foreach($_GET['fruits'] as $fruit) {
            echo "J'adore les   ".$fruit."s";
            $i++;
            if($i < $total)
            echo ", ";
        }
    }

    else {
        echo "Tu n'aimes aucun fruit !";
    }
}
    
?>