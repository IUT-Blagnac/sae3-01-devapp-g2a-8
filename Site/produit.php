<?php
if (!isset($_GET['id'])) {
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
oci_close($conn);

if (!$result) {
    header("Location: index.php");
    exit();
}

print($produit["NOM"]);
echo "pas encore implémenté";
