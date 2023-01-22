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

require('include/connect.inc.php');

$req = "begin SUPPRIMERUTILISATEUR(:pNumU); end;";
$st = oci_parse($conn, $req);
oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
$result = oci_execute($st);
oci_free_statement($st);
oci_commit($conn);
oci_close($conn);
session_destroy();
?>

<script>
    alert("Suppression du compte effectuée !");
    window.location.replace("index.php");
</script>