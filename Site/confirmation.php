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
if (!isset($_POST['payer'])) {
    header("Location: formPaiement.php?erreur=Veuillez procéder au paiement");
    exit();
} else {
    require('include/connect.inc.php');

    echo "pas implémenté";

    /* faire les insert
        $req="";
        $st=oci_parse($conn, $req);
        oci_bind_by_name($st, ":pNomRue", $_POST['nomrue']);
        $result=oci_execute($st);
        $compte=oci_fetch_assoc($st);
        oci_free_statement($st);
        oci_close($conn);*/
}
