<?php
    /* si connecté : visualisation compte
    sinon : affichage du formulaire de connexion */


    session_start();
    if ($_SESSION['connexion'] != 'client' && $_SESSION['connexion'] != 'admin') {
        header("Location: formConnexion.php?error=veuillez vous connecter");
        exit();
    }
?>
<!DOCTYPE html>

<html lang="fr"><head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Mon compte</title>
<body>

<?php
    include_once('include/header.php');
    include_once('include/menu.php');
    include_once('include/footer.php');
?>
