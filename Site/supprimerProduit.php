<?php
if (session_status() != PHP_SESSION_ACTIVE) {
    session_start();
}
if (isset($_SESSION['connexion'])) {
    if ($_SESSION['connexion'] != 'admin') {
        header("Location: index.php");
        exit();
    }
} else {
    header("Location: index.php");
    exit();
}

require('include/connect.inc.php');

$req = "SELECT * FROM Produit WHERE nump=:pNumP";
$st = oci_parse($conn, $req);
oci_bind_by_name($st, ":pNumP", $_GET['id']);
$result = oci_execute($st);
$produit = oci_fetch_assoc($st);
oci_free_statement($st);

if (!$produit) { // Si le produit n'existe pas
    ?>
    <script>
        alert("Erreur lors de la suppression du produit : Ce produit n'existe pas !");
        window.location.replace("index.php");
    </script>
<?php
} else {
    
    $req = "begin SUPPRIMERPRODUIT(:pNumP); end;";
    $st = oci_parse($conn, $req);
    oci_bind_by_name($st, ":pNumP", $_GET['id']);
    $result = oci_execute($st);
    oci_free_statement($st);
    oci_commit($conn);
    oci_close($conn);
}
?>

<script>
    alert("Suppression du produit effectuée !");
    window.location.replace("index.php");
</script>