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
if (!isset($_POST['nomrue']) || !isset($_POST['numrue']) || !isset($_POST['codepostal']) || !isset($_POST['ville']) || !isset($_POST['pays'])) {
    header("Location: formAdresse.php?erreur=Tous les champs doivent être remplis");
    exit();
} else {

    require('include/connect.inc.php');

    $req = "UPDATE Utilisateur 
              SET nomRue=:pNomRue, numRue=:pNumRue, codePostal=:pCodePostal, ville=:pVille, pays=:pPays 
              WHERE numU=:pNumU";
    $st = oci_parse($conn, $req);
    oci_bind_by_name($st, ":pNomRue", $_POST['nomrue']);
    oci_bind_by_name($st, ":pNumRue", $_POST['numrue']);
    oci_bind_by_name($st, ":pCodePostal", $_POST['codepostal']);
    oci_bind_by_name($st, ":pVille", $_POST['ville']);
    oci_bind_by_name($st, ":pPays", $_POST['pays']);
    oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
    $result = oci_execute($st);
    $compte = oci_fetch_assoc($st);
    oci_free_statement($st);
    oci_close($conn);

    header("Location: formPaiement.php");
    exit();
}
