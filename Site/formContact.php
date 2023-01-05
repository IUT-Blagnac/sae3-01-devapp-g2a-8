<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Nous Contacter</title>
    <?php include_once('include/icon.php'); ?>
</head>

<body id='bodyDeFormulaire'>

    <?php
    include_once('include/header.php');
    include_once('include/menu.php');

    if (session_status() != PHP_SESSION_ACTIVE) {
        session_start();
    }
    if (isset($_SESSION['connexion'])) {

        require('include/connect.inc.php');

        $req = "SELECT * FROM Utilisateur WHERE numU=:pNumU";
        $st = oci_parse($conn, $req);
        oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
        $result = oci_execute($st);
        $compte = oci_fetch_assoc($st);
        oci_free_statement($st);
        oci_close($conn);
    } else {
        $compte = ["NOM" => NULL, "PRENOM" => NULL, "MAIL" => NULL];
    }
    ?>

    <div id="maindiv">
        <div class="formulaire">
            <h1>Contact</h1>
            <?php
            if (isset($_GET['erreur'])) {
                echo "<span id='error'>" . htmlspecialchars($_GET['erreur']) . "</span>";
            }
            ?>
            <form action="traitContact.php" method="POST">
                Nom : <br>
                <input type="text" name="nom" <?php echo "value='" . $compte['NOM'] . "'" ?> required><br><br>
                Prénom : <br>
                <input type="text" name="prenom" <?php echo "value='" . $compte['PRENOM'] . "'" ?> required><br><br>
                Adresse email: <br>
                <input type="email" name="mail" <?php echo "value='" . $compte['MAIL'] . "'" ?> required><br><br>
                Message : <br>
                <textarea name="message" id="messageContact" required></textarea><br>
                <input type="submit" value="Envoyer" name="envoyer">
            </form>
        </div>
    </div>
    <br><br><br><br><br>

    <?php
    include_once('include/footer.php');
    ?>

</body>

</html>