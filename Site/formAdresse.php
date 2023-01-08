<?php
if (session_status() != PHP_SESSION_ACTIVE) {
    session_start();
}
if (isset($_SESSION['connexion'])) {

    if ($_SESSION['connexion'] != 'client' && $_SESSION['connexion'] != 'admin') {
        header("Location: formConnexion.php?erreur=Veuillez vous connecter");
        exit();
    }

    require('include/connect.inc.php');

    $req = "SELECT * FROM Utilisateur WHERE numU=:pNumU";
    $st = oci_parse($conn, $req);
    oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
    $result = oci_execute($st);
    $compte = oci_fetch_assoc($st);
    oci_free_statement($st);
    oci_close($conn);
} else {
    header("Location: formConnexion.php?erreur=Veuillez vous connecter");
    exit();
}
?>
<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Ajouter une adresse</title>
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
            <h1>Adresse de livraison</h1>
            <form action="traitAdresse.php" method="POST">
                Nom de la rue <br>
                <input type="text" name="nomrue" <?php echo "value='" . $compte['NOMRUE'] . "'" ?> required><br><br>
                Numéro de la rue : <br>
                <input type="text" name="numrue" <?php echo "value='" . $compte['NUMRUE'] . "'" ?> required><br><br>
                Code postal : <br>
                <input type="text" name="codepostal" <?php echo "value='" . $compte['CODEPOSTAL'] . "'" ?> required><br><br>
                Ville : <br>
                <input type="text" name="ville" <?php echo "value='" . $compte['VILLE'] . "'" ?> required><br><br>
                Pays : <br>
                <input type="text" name="pays" <?php echo "value='" . $compte['PAYS'] . "'" ?> required><br><br>
                <input type="submit" value="Continuer" name="continuer">
            </form>
        </div>
    </div>
    <br><br><br><br><br>

    <?php
    include_once('include/footer.php');
    ?>

</body>

</html>