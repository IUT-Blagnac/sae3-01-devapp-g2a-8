<?php

if (session_status() != PHP_SESSION_ACTIVE) {
    session_start();
}
if (!isset($_SESSION['recherche']) || (!isset($_GET['categorie']) && !isset($_GET['nom']))) {
    header("Location: index.php");
    exit();
}
?>
<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Mon compte</title>
    <?php include_once('include/icon.php'); ?>
</head>

<body>
    <?php
    include_once('include/header.php');
    include_once('include/menu.php');

    echo "<div id='maindiv'>";
    echo "<div id='produits'>";
    
    $produits = $_SESSION['recherche'];

    if (empty($produits['NUMP'])) {
        if (isset($_GET['categorie'])) {
            echo "<h1>Pas de produits correspondant à la catégorie " . htmlentities($_GET['categorie']) . "</h1>";
        } else {
            echo "<h1>Pas de produits correspondant à : " . htmlentities($_GET['nom']) . "</h1>";
        }
    } else {

        if (isset($_GET['categorie'])) {
            echo "<h1>Catégorie : " . htmlentities($_GET['categorie']) . "</h1>";
        } else {
            echo "<h1>Votre recherche : " . htmlentities($_GET['nom']) . "</h1>";
        }

        echo "<div id='container'>";
        for ($i = 0; $i < count($produits['NUMP']); $i++) {
            echo "<div class='item'>";
            echo "<h3>" . $produits['NOM'][$i] . "</h3>";
            echo "<img src='include/produits/" . $produits['NUMP'][$i] . ".jpg' alt='" . $produits['NOM'][$i] . "'>";

            if ($produits['PROMO'][$i] > 0) {
                echo "<span id='promo'>PROMO -" . ($produits['PROMO'][$i] * 100) . "%</span>";
                echo "<h4><del>Prix : " . $produits['PRIX'][$i] . "€ </del><span id='promo'> " . round($produits['PRIX'][$i] - ($produits['PRIX'][$i] * $produits['PROMO'][$i]), 2, PHP_ROUND_HALF_UP) . " €</span></h4>";
            } else {
                echo "<h4>Prix : " . $produits['PRIX'][$i] . " €</h4>";
            }
            echo "<a href='produit.php?id=" . $produits['NUMP'][$i] . "'><button>Voir plus</button></a>";
            echo "<br>";
            echo "<br>";
            echo "</div>";
        }
        echo "</div>";
    }

    echo "</div>";
    echo "</div>";

    ?>
    <?php
    include_once('include/footer.php');
    ?>

</body>

</html>