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
if (!isset($_POST['nom']) || !isset($_POST['prix']) || !isset($_POST['descriptif']) || !isset($_POST['marque']) || !isset($_POST['promo'])) {
    header("Location: formModification.php?erreur=Veuillez remplir tous les champs");
    exit();
}

require('include/connect.inc.php');

$req = "SELECT * FROM Produit WHERE nump=:pNumP";
$st = oci_parse($conn, $req);
oci_bind_by_name($st, ":pNumP", $_POST['id']);
$result = oci_execute($st);
$produit = oci_fetch_assoc($st);
oci_free_statement($st);

if (!$produit) { // Si le produit n'existe pas
    header("Location: index.ph");
    exit();
}

$req = "UPDATE Produit 
        SET nom=:pNom, prix=:pPrix, descriptif=:pDescriptif, marque=:pMarque, promo=:pPromo
        WHERE nump=:pNumP";
$st = oci_parse($conn, $req);
oci_bind_by_name($st, ":pNom", $_POST['nom']);
oci_bind_by_name($st, ":pPrix", $_POST['prix']);
oci_bind_by_name($st, ":pDescriptif", $_POST['descriptif']);
oci_bind_by_name($st, ":pMarque", $_POST['marque']);
$promo=$_POST['promo']/100;
oci_bind_by_name($st, ":pPromo", $promo);
oci_bind_by_name($st, ":pNumP", $_POST['id']);
$result = oci_execute($st);
oci_free_statement($st);
oci_commit($conn);
oci_close($conn);

if (isset($_FILES['image'])) {
    var_dump($_FILES);
    echo "<br>";
    $uploadfile = './include/produits/'.htmlentities($_POST['id']).'.jpg';
    echo "<br>";
    echo $uploadfile;
    echo "<br>";

    if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
        echo "File is valid, and was successfully uploaded.\n";
    } else {
        echo "Possible file upload attack!\n";
    }
}

