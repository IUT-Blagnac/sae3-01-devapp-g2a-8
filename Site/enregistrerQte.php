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
if (!isset($_POST['qte']) || !isset($_GET['id'])) {
    header("Location: panier.php");
    exit();
}
if ($_POST['qte'] < 1 || $_POST['qte'] > 999) {
    header("Location: panier.php?erreur=La quantité doit être comprise entre 1 et 999");
    exit();
}
include_once('gestionPanier.php');
try {
    modifierQuantite(htmlentities($_GET['id']), htmlentities($_POST['qte']), htmlentities($_GET['couleur']));
} catch (Exception $e) {
    header("Location: panier.php?erreur=" . $e->getMessage());
    exit();
}
header("Location: panier.php");
exit();
