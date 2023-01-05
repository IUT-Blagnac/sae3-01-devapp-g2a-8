<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Accueil</title>
    <?php include_once('include/icon.php'); ?>
</head>

<body>

    <?php
    include_once('include/header.php');
    include_once('include/menu.php');
    ?>
    <div id="maindiv">
    <?php
    /*var_dump($categories);
        echo"<br>";
        echo"<br>";
        $parents=[]; //indice des parents
        for ($i=0; $i < count($categories['NOM']); $i++) {
            if ($categories['CATEGORIEPARENTE'][$i]==NULL) {
                array_push($parents, $i);
            }
        }
        $res=[];
        for ($i=0; $i < count($parents); $i++) {
            $res[$i]=$categories['NOM'][$parents[$i]];
        }

        var_dump($res);*/

    ?>
    </div>

    <?php
    include_once('include/footer.php');
    ?>
</body>

</html>