<?php
    if (session_status()!= PHP_SESSION_ACTIVE) {
        session_start();
    }
    if (isset($_SESSION['connexion'])) {
        if ($_SESSION['connexion']!='client' && $_SESSION['connexion']!='admin') {
            header("Location: formConnexion.php?erreur=Veuillez vous connecter");
            exit();
        }
    } else {
        header("Location: formConnexion.php?erreur=Veuillez vous connecter");
        exit();
    }
    include_once("gestionPanier.php");
    if (estVide()) { // si le panier est vide
        header("Location: panier.php");
        exit();
    }
    header("Location: formAdresse.php");
    exit();

