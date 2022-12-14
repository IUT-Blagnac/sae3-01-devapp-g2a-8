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
    isset($_POST['email']) && isset($_POST['continuer'])
    && isset($_POST['nom']) && isset($_POST['prenom'])
) {
    //test format email
    if (!preg_match("#^\\S+@\\S+\\.\\S+$#", $_POST['email'])) {
        header("Location: modificationCompte.php?erreur=Format de l'email invalide");
        exit();
    }

    //test format prenom
    if (!preg_match("#^[a-z]+$#i", $_POST['prenom'])) {
        header("Location: modificationCompte.php?erreur=Format du prénom invalide");
        exit();
    }

    //test format nom
    if (!preg_match("#^[a-z]+$#i", $_POST['nom'])) {
        header("Location: modificationCompte.php?erreur=Format du nom invalide");
        exit();
    }

    //connexion à la BD
    //récup d'un compte pour voir si il existe
    $reqSelect = "SELECT * FROM Utilisateur WHERE mail = :pMail";
    $st = oci_parse($conn, $reqSelect);
    oci_bind_by_name($st, ":pMail", $_POST['email']);
    $result = oci_execute($st);
    $compte = oci_fetch_assoc($st);
    if (oci_num_rows($st) > 1) {
        header("Location: modificationCompte.php?erreur=Cette adresse mail est déjà utilisée pour un autre compte");
        exit();
    }
    oci_free_statement($st);

    //update
    $reqUpdate = "UPDATE Utilisateur 
                    SET nom=:pNom, prenom=:pPrenom, mail=:pMail, nomRue=:pNomRue, numRue=:pNumRue, codePostal=:pCodePostal, ville=:pVille, pays=:pPays
                    WHERE numU=:pNumU";
    $st = oci_parse($conn, $reqUpdate);
    oci_bind_by_name($st, ":pNom", $_POST['nom']);
    oci_bind_by_name($st, ":pPrenom", $_POST['prenom']);
    oci_bind_by_name($st, ":pMail", $_POST['email']);
    oci_bind_by_name($st, ":pNomRue", $_POST['nomrue']);
    oci_bind_by_name($st, ":pNumRue", $_POST['numrue']);
    oci_bind_by_name($st, ":pCodePostal", $_POST['codepostal']);
    oci_bind_by_name($st, ":pVille", $_POST['ville']);
    oci_bind_by_name($st, ":pPays", $_POST['pays']);
    oci_bind_by_name($st, ":pNumU", $compte['NUMU']);
    $result = oci_execute($st);
    oci_free_statement($st);
    oci_commit($conn);
    oci_close($conn);

    header("Location: compte.php");
    exit();
}
