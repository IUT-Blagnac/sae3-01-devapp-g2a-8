<?php
    session_start();
    require_once('include/connect.inc.php');
    if ($_SESSION['connexion'] != 'client' && $_SESSION['connexion'] != 'admin') {
        header("Location: formConnexion.php?error=veuillez vous connecter");
        exit();
    }

    $req="DELETE FROM Utilisateur WHERE numU=:pNumU";
    $st=oci_parse($conn, $req);
    oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
    $result=oci_execute($st);
    oci_free_statement($st);
    oci_commit($conn);
    oci_close($conn);
    session_destroy();
    /*
    il faudrat également supprimer les commandes associées */
?>

<script>
    alert("Suppression du compte effectuée !");
    window.location.replace("index.php");
</script>
