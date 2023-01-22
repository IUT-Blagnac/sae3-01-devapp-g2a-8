<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Connexion</title>
    <?php include_once('include/icon.php'); ?>
</head>

<body id='bodyDeFormulaire'>

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
            <h1>Se connecter</h1>
            <form action="traitConnexion.php" method="POST">
                Votre adresse email: <br>
                <input type="email" name="email" <?php
                                                    if (isset($_COOKIE['connexion'])) {
                                                        echo "value=" . $_COOKIE['connexion'];
                                                    }
                                                    ?> required><br><br>
                Votre mot de passe: <br>
                <input type="password" name="mdp" required><br><br>
                Se souvenir de moi <input type="checkbox" name="memo"><br><br>
                <input type="submit" value="Continuer" name="continuer">
            </form>
            <a href="formCreation.php" id="creeCompte">Créer un compte</a>
        </div>
    </div>
    <br><br><br><br><br>

    <?php
    include_once('include/footer.php');
    ?>

</body>

</html>