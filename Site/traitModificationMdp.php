<?php
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
require("include/connect.inc.php");
if (
    isset($_POST['ancienMdp']) && isset($_POST['modifier'])
    && isset($_POST['nouveauMdp']) && isset($_POST['verifNouveauMdp'])
) {

    $reqSelect = "SELECT mdp FROM Utilisateur WHERE numU=:pNumU";
    $st = oci_parse($conn, $reqSelect);
    oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
    $result = oci_execute($st);
    $compte = oci_fetch_assoc($st);
    oci_free_statement($st);

    //test que le mdp correspond bien à celui du compte
    if (!password_verify($_POST['ancienMdp'], $compte['MDP'])) {
        header("Location: modificationMdp.php?erreur=Mauvais mot de passe");
        exit();
    }

    //test que les mdp soient les mêmes
    if ($_POST['nouveauMdp'] != $_POST['verifNouveauMdp']) {
        header("Location: modificationMdp.php?erreur=Les mots de passe ne sont pas égaux");
        exit();
    }

    //test mdp respecte RGPD
    if (!preg_match("#^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[\#?!@/\\$%^&*}{)([\]~,;:_'-]).{12,}$#", $_POST['mdp'])) {
        header("Location: modificationMdp.php?erreur=Le mot de passe doit faire au moins 12 caractères, dont au moins un catactère spécial, une minuscule, une majuscule et un chiffre");
        exit();
    }

    $hash = password_hash($_POST['nouveauMdp'], PASSWORD_DEFAULT);

    $reqUpdate = "UPDATE Utilisateur SET mdp=:pMdp WHERE numU=:pNumU";
    $st = oci_parse($conn, $reqUpdate);
    oci_bind_by_name($st, "pMdp", $hash);
    oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
    oci_execute($st);
    oci_free_statement($st);
    oci_commit($conn);
    oci_close($conn);

    header("Location: compte.php");
    exit();
}
