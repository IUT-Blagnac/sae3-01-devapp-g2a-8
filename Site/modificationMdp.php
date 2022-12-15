<?php
    /* si connecté : visualisation compte
    sinon : redirection vers formulaire de connexion */

    session_start();
    if ($_SESSION['connexion'] != 'client' && $_SESSION['connexion'] != 'admin') {
        header("Location: formConnexion.php?error=veuillez vous connecter");
        exit();
    }
?>

<!DOCTYPE html>

<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Mon compte</title>
    <?php include_once('include/icon.php');?>
</head>
<body>

<?php
    include_once('include/header.php');
    include_once('include/menu.php');
?>

<div id="maindiv">
    <div class="formulaire">
        <?php
            if (isset($_GET['error'])) {
                echo"<span id='error'>".htmlspecialchars($_GET['error'])."</span>";
            }
        ?>
        <h1>Modifier son mot de passe</h1>
        <form action="traitModificationMdp.php" method="POST">
            Ancien mot de passe : <br>
            <input type='password' name='ancienMdp' required><br><br>
            Nouveau mot de passe : <br>
            <input type='password' name='nouveauMdp' required><br><br>
            Vérifier le mot de passe : <br>
            <input type='password' name='verifNouveauMdp' required><br><br>
            <input type='submit' name='modifier' value='Modifier'> <br>
        </form>
    </div>
</div>
<br><br><br><br><br>

<?php
    include_once('include/footer.php');
?>

</body></html>
