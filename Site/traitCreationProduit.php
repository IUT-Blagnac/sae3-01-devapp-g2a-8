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
if (!isset($_POST['nom']) || !isset($_POST['prix']) || !isset($_POST['promo']) || !isset($_POST['descriptif']) || !isset($_POST['marque']) || !isset($_POST['categorie'])) {
    header("Location: formCreationProduit.php?erreur=Veuillez remplir tous les champs");
    exit();
}
if (strlen($_POST['descriptif']) >= 4000) {
    header("Location: formCreationProduit.php?erreur=Le descriptif ne doit pas dépasser 4000 caractères");
    exit();
}

require('include/connect.inc.php');

//récupérer la prochaine séquence
$req = "SELECT PRODUIT_ID_SEQ.nextVal from DUAL";
$st = oci_parse($conn, $req);
$result = oci_execute($st);
$numProduit = oci_fetch_assoc($st)['NEXTVAL'];
oci_free_statement($st);

//ajouter le produit
$req = "INSERT INTO Produit
        VALUES (:pNumP, :pNom, :pPrix, :pPromo, :pDescriptif, :pMarque, :pCategorie)";
$st = oci_parse($conn, $req);
oci_bind_by_name($st, ":pNumP", $numProduit);
oci_bind_by_name($st, ":pNom", $_POST['nom']);
oci_bind_by_name($st, ":pPrix", $_POST['prix']);
oci_bind_by_name($st, ":pPromo", $_POST['promo']);
oci_bind_by_name($st, ":pDescriptif", $_POST['descriptif']);
oci_bind_by_name($st, ":pMarque", $_POST['marque']);
oci_bind_by_name($st, ":pCategorie", $_POST['categorie']);
$result = oci_execute($st);
oci_free_statement($st);

if (!$result) { //si erreur
?>
    <script>
        alert("Erreur lors de l'ajout du produit");
        window.location.replace("compte.php");
    </script>
<?php
}

//ajouter le stock pour ce produit
for ($i=0; $i < count($_POST['couleur']); $i++) { 

    $req = "INSERT INTO Stock
            VALUES (:pCouleur , :pNumP, :pQuantite)";
    $st = oci_parse($conn, $req);
    oci_bind_by_name($st, ":pNumP", $numProduit);
    oci_bind_by_name($st, ":pCouleur", $_POST['couleur'][$i]);
    oci_bind_by_name($st, ":pQuantite", $_POST['stock'][$i]);
    $result = oci_execute($st);
    oci_free_statement($st);

    if (!$result) { //si erreur
    ?>
        <script>
            alert("Erreur lors de l'ajout du stock");
            window.location.replace("compte.php");
        </script>
    <?php
    }
}

oci_close($conn);

// Ajouter la gestion de l'image quand le problème de serveur sera résolu

?>
    <script>
        alert("Produit ajouté avec succès");
        window.location.replace("index.php");
    </script>
