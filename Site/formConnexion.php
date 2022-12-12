<!DOCTYPE html>

<html lang="fr"><head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Connexion</title>
<body>

<?php
    include_once('include/header.php');
    include_once('include/menu.php');
    
    if (isset($_GET['error'])) {
        echo"<h2>".htmlspecialchars($_GET['error'])."</h2>";
    }
?>

<h1>Se connecter</h1>
<form action="traitConnexion.php" method="POST">
    Votre adresse email: <br>
    <input type="email" name="email"
    <?php
    if (isset($_COOKIE['connexion'])) {
        echo "value=".$_COOKIE['connexion'];
    }
    ?>
    required><br><br>
    Votre mot de passe: <br>
    <input type="password" name="mdp" required><br><br>
    <input type="checkbox" name="memo"> Se souvenir de moi <br><br>
    <input type="submit" value="Continuer" name="continuer">
</form>

<div>
    <a href="formCreation.php">Créer un compte</a>
</div>

<?php
    include_once('include/footer.php');
?>

</body></html>

