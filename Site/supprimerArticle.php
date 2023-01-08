<?php
//test variable session sinon redirige vers formConnexion avec erreur
if (session_status() != PHP_SESSION_ACTIVE) {
    session_start();
}
if (isset($_SESSION['connexion'])) {
    if ($_SESSION['connexion'] != 'client' && $_SESSION['connexion'] != 'admin') {
        header("Location: formConnexion.php?erreur=Veuillez vous connecter");
        exit();
    }
} else {
    header("Location: formConnexion.php?erreur=Veuillez vous connecter");
    exit();
}
if (!isset($_GET['id'])) {
    header("Location: panier.php");
    exit();
}
include_once('gestionPanier.php');
supprimerProduit(htmlentities($_GET['id']), htmlentities($_GET['couleur']));
header("Location: panier.php");
exit();
