<?php
//test variable session sinon redirige vers formConnexion avec erreur
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

?>
<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Paiement</title>
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
            <h1>Paiement de la commande</h1>
            <form action="confirmation.php" method="post">
                <input type="submit" value="Payer" name="payer">
            </form>
        </div>
    </div>
    <br><br><br><br><br>

    <?php
    include_once('include/footer.php');
    ?>

</body>

</html>