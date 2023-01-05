<?php
if (session_status() != PHP_SESSION_ACTIVE) {
    session_start();
}
require("include/connect.inc.php");
if (
    isset($_POST['email']) && isset($_POST['mdp']) && isset($_POST['continuer'])
    && isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['verifmdp'])
) {
    //test format email
    if (!preg_match("#^\\S+@\\S+\\.\\S+$#", $_POST['email'])) {
        header("Location: formCreation.php?erreur=Format de l'email invalide");
        exit();
    }

    //test format prenom
    if (!preg_match("#[a-z]+#i", $_POST['prenom'])) {
        header("Location: formCreation.php?erreur=Format du prénom invalide");
        exit();
    }

    //test format nom
    if (!preg_match("#[a-z]+#i", $_POST['nom'])) {
        header("Location: formCreation.php?erreur=Format du nom invalide");
        exit();
    }

    //test que les mdp soient les mêmes
    if ($_POST['mdp'] != $_POST['verifmdp']) {
        header("Location: formCreation.php?erreur=Les mots de passe ne sont pas égaux");
        exit();
    }

    //test mdp respecte RGPD
    if (!preg_match("#^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[\#?!@/\\$%^&*}{)([\]~,;:_'-]).{12,}$#", $_POST['mdp'])) {
        header("Location: formCreation.php?erreur=Le mot de passe doit faire au moins 12 caractères, dont au moins un catactère spécial, une minuscule, une majuscule et un chiffre");
        exit();
    }

    //connexion à la BD
    //récup d'un compte pour voir si il existe
    $reqSelect = "SELECT * FROM Utilisateur WHERE mail = :pMail";
    $st = oci_parse($conn, $reqSelect);
    oci_bind_by_name($st, ":pMail", $_POST['email']);
    $result = oci_execute($st);
    $compte = oci_fetch_assoc($st);
    if ($compte) {
        header("Location: formCreation.php?erreur=Cette adresse mail est déjà utilisée pour un autre compte");
        exit();
    }
    oci_free_statement($st);

    //hashage du mdp
    $hash = password_hash($_POST['mdp'], PASSWORD_DEFAULT);

    //insertion
    $reqInsert = "INSERT INTO Utilisateur(NUMU, NOM, PRENOM, MAIL, MDP, ADMINISTRATEUR) VALUES(UTILISATEUR_ID_SEQ.nextval, :pNom, :pPrenom, :pMail, :pMdp, NULL)";
    $st = oci_parse($conn, $reqInsert);
    oci_bind_by_name($st, ":pNom", $_POST['nom']);
    oci_bind_by_name($st, ":pPrenom", $_POST['prenom']);
    oci_bind_by_name($st, ":pMail", $_POST['email']);
    oci_bind_by_name($st, ":pMdp", $hash);
    $result = oci_execute($st);
    oci_free_statement($st);

    //variable session (on le connecte)
    $_SESSION['connexion'] = 'client';
    $st = oci_parse($conn, $reqSelect);
    oci_bind_by_name($st, ":pMail", $_POST['email']);
    $result = oci_execute($st);
    $compte = oci_fetch_assoc($st);
    $_SESSION['id'] = $compte['NUMU'];
    oci_free_statement($st);
    oci_commit($conn);
    oci_close($conn);

    //redirection vers l'index
    header("Location: index");
    exit();
} else {
    header("Location: formConnexion.php?erreur=Veuillez vous connecter");
    exit();
}
