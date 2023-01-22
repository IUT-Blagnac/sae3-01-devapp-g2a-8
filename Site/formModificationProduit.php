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

if (!$produit) { // Si le produit n'existe pas
?>
    <script>
        alert("Erreur lors de la modification du produit : Ce produit n'existe pas !");
        window.location.replace("index.php");
    </script>
<?php
} else {

?>

<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Modifier un produit</title>
    <?php include_once('include/icon.php'); ?>

<body>
    <?php
    include_once('include/header.php');
    include_once('include/menu.php');
    ?>

    <div id="maindiv">
        <div class="formulaire">
            <?php
            if (isset($_GET['erreur'])) {
                echo "<span id='error'>" . htmlspecialchars($_GET['erreur']) . "</span>";
            }
            ?>
            <h1>Modifier un produit</h1>
            <form enctype="multipart/form-data" action="traitModificationProduit.php" method="POST" id="modifProduit">
                <input type="hidden" name="id" <?php echo "value='" . $produit['NUMP'] . "'" ?>>
                <br>Nom du produit  : <br>
                <input type="text" name="nom" <?php echo "value='" . $produit['NOM'] . "'" ?> required><br>
                <br>Descriptif : <br>
                <textarea name="descriptif" rows="5" cols="33" required><?php echo $produit['DESCRIPTIF'] ?></textarea><br>
                <br>Marque : <br>
                <input type="text" name="marque" <?php echo "value='" . $produit['MARQUE'] . "'" ?> required><br>
                <br>Prix : 
                <input type="number" name="prix" min="0" <?php echo "value='" . $produit['PRIX'] . "'" ?> step=".01" required>€<br>
                <br>Promo : 
                <input type="number" name="promo" min="0" max="100" <?php echo "value='" . $produit['PROMO']*100 . "'" ?> step="1" required>%<br>
                <br>Image actuelle : <br>
                <img id="imageFormulaire" src="include/produits/<?php echo $produit['NUMP'] ?>" alt="<?php echo $produit['NOM'] ?>"><br>
                <br>Changer l'image : 
                <input type="file" name="image" id="image" accept="image/.jpg"><br>
                <input type="submit" value="Modifier" name="modifier">
            </form>
        </div>
    </div>
    <br><br><br><br><br>

    <?php
    include_once('include/footer.php');
    ?>

</body>

<?php
}
?>