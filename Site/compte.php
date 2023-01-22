<?php
/* si connecté : visualisation compte
        sinon : redirection vers formulaire de connexion */
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
    <title>Mon compte</title>
    <?php include_once('include/icon.php'); ?>
</head>

<body>

    <?php
    include_once('include/header.php');
    include_once('include/menu.php');
    require('include/connect.inc.php');

    $req = "SELECT * FROM Utilisateur WHERE numU=:pNumU";
    $st = oci_parse($conn, $req);
    oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
    $result = oci_execute($st);
    $compte = oci_fetch_assoc($st);
    oci_free_statement($st);
    oci_close($conn);
    ?>
    <div id="maindiv">
        <div id="cptdiv">
            <div class="cpt">
                <h3>Mon compte</h3>
                <h1>
                    <?php echo  $compte['NOM'] . " " . $compte['PRENOM']; ?>
                </h1>

                <span>
                    <h3>Mail : </h3>
                </span>
                <?php echo $compte["MAIL"]; ?>
                <br>

                <?php
                if ($compte["NUMRUE"] != NULL && $compte["NOMRUE"] != NULL && $compte["CODEPOSTAL"] != NULL && $compte["VILLE"] != NULL) {
                    echo "<span><h3>Adresse :</h3></span>";
                    echo $compte["NUMRUE"] . " " . $compte["NOMRUE"] . "<br>" . $compte["CODEPOSTAL"] . " " . $compte["VILLE"] . "<br>" . $compte["PAYS"];
                    echo "<br><br>";
                }
                ?>
                <div class="bouton-aligne">
                    <a href="modificationCompte.php"><button class="buttonCpt">Modifier mes informations</button></a><br>
                </div>
                    <a href="modificationMdp.php"><button class="buttonCpt">Modifier mon mot de passe</button></a><br>
                <div class="bouton-aligne">
                    <a href="deconnexion.php"><button class="buttonCpt">Deconnexion</button></a><br>
                </div>
                    <button onclick="suppression()" class="buttonCpt">Supprimer mon compte</button><br><br>
                <?php
                if ($_SESSION['connexion'] == 'admin') {
                    echo "<a href='#' class='acpt'><button class='buttonCpt'>Ajouter un produit</button></a><br>";
                }
                ?>

            </div>
        </div>
    </div>
    <br><br><br><br>

    <script>
        function suppression() {
            if (window.confirm("Voulez vous vraiment supprimer votre compte VidéoFest ?")) {
                window.open("suppressionCompte.php", "_self");
            }
        }
    </script>

    <?php
    include_once('include/footer.php');
    ?>

</body>

</html>