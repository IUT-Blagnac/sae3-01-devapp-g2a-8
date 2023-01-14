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
    header("Location: formModificationProduit.php?erreur=Veuillez remplir tous les champs");
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

// A ajouter quand le problème de serveur sera résolu
// // if (!empty($_FILES['image']) && $_FILES['image']['error'] == 0) { // Testons si l'extension est autorisée
// //     $infosfichier = pathinfo($_FILES['image']['name']);
// //     $extension_upload = $infosfichier['extension'];
// //     $extensions_autorisees = array('jpg', 'jpeg', 'gif', 'png');
// //     if (in_array($extension_upload, $extensions_autorisees)) {
// //     // On peut valider le fichier et le stocker définitivement 
// //     move_uploaded_file($_FILES['image']['tmp_name'],'include/produits/'.basename($_FILES['image']['name'])); 
// //     echo "L\'envoi a bien été effectué ! <br>"; 
// //     }
// //     else {
// //     echo "Le fichier n'est pas du bon type !<br>";
// //     }
// // }

// if (!empty($_FILES['image']['name'])) {
//     $uploadfile = './include/produits/'.htmlentities($_POST['id']).'.jpg';

//     if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
//         echo "Image upload\n";
//     } else {
//         echo "Problème\n";
//     }

//      echo exec('whoami'); 
// }


