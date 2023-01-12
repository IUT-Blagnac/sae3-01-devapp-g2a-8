<?php
if (session_status() != PHP_SESSION_ACTIVE) {
    session_start();
}
if (isset($_SESSION['connexion'])) {
    if ($_SESSION['connexion'] != 'admin') {
        header("Location: index.php");
        exit();
    }
} else {
    header("Location: index.php");
    exit();
}
if (!isset($_POST['nom']) || !isset($_POST['prix']) || !isset($_POST['descriptif']) || !isset($_POST['marque']) || !isset($_POST['promo'])) {
    header("Location: formModification.php?erreur=Veuillez remplir tous les champs");
    exit();
}