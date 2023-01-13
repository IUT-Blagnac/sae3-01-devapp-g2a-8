<?php
if (session_status() != PHP_SESSION_ACTIVE) {
    session_start();
}
require("include/connect.inc.php");
if (isset($_POST['email']) && isset($_POST['mdp']) && isset($_POST['continuer'])) {

    //test format mail
    if (!preg_match("#^\\S+@\\S+\\.\\S+$#", $_POST['email'])) {
        header("Location: formConnexion.php?erreur=Format de l'email invalide");
        exit();
    }

    //connexion à la BD
    $req = "SELECT numU, mail, mdp, administrateur FROM Utilisateur WHERE mail=:pMail";
    $st = oci_parse($conn, $req);
    oci_bind_by_name($st, ":pMail", $_POST['email']);
    $result = oci_execute($st);
    $compte = oci_fetch_assoc($st);
    oci_free_statement($st);
    oci_close($conn);

    // si aucun compte sélectionné
    if (!$compte) {
        header("Location: formConnexion.php?erreur=Compte inexistant");
        exit();
    }

    //comparaison du mdp avec password_verify()
    if (!password_verify($_POST['mdp'], $compte['MDP'])) {
        header("Location: formConnexion.php?erreur=Mot de passe incorrect");
        exit();
    }

    //variable session
    if ($compte['ADMINISTRATEUR'] == 'Admin') {
        $_SESSION['connexion'] = 'admin';
    } else {
        $_SESSION['connexion'] = 'client';
    }
    $_SESSION['id'] = $compte['NUMU']; //récupère l'identifiant qui sera utilisé dans d'autres pages (modifier, supprimer, etc)

    //cookie
    if (isset($_POST['memo'])) {
        setcookie("connexion", htmlentities($_POST['email']), time() + 60 * 20); //créer cookie 20min
    } else {
        setcookie("connexion", htmlentities($_POST['email']), time() - 1); //détruire cookie
    }

    //renvoie vers l'index
    header("Location: index.php");
    exit();

} else {
    header("Location: formConnexion.php?erreur=Veuillez vous connecter");
    exit();
}
