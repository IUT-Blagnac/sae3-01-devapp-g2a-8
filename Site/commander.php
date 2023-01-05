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

    require('include/connect.inc.php');

    $req="SELECT * FROM Utilisateur WHERE numU=:pNumU";
    $st=oci_parse($conn, $req);
    oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
    $result=oci_execute($st);
    $compte=oci_fetch_assoc($st);
    oci_free_statement($st);
    oci_close($conn);

    if ($compte["NUMRUE"]!=NULL && $compte["NOMRUE"]!=NULL && $compte["CODEPOSTAL"]!=NULL && $compte["VILLE"]!=NULL && $compte["PAYS"]!=NULL) {
        header("Location: formPaiement.php");
        exit();
    } else {
        header("Location: formAdresse.php");
        exit();
    }
