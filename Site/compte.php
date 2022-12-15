<?php
    /* si connecté : visualisation compte
    sinon : redirection vers formulaire de connexion */

    session_start();
    if ($_SESSION['connexion'] != 'client' && $_SESSION['connexion'] != 'admin') {
        header("Location: formConnexion.php?error=Veuillez vous connecter");
        exit();
    }
?>
<!DOCTYPE html>

<html lang="fr"><head>
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
    require_once('include/connect.inc.php');

    $req="SELECT * FROM Utilisateur WHERE numU=:pNumU";
    $st=oci_parse($conn, $req);
    oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
    $result=oci_execute($st);
    $compte=oci_fetch_assoc($st);
    oci_free_statement($st);
    oci_close($conn);
?>

    <h1>Mes Informations</h1>
    <?php echo  $compte['NOM']." ".$compte['PRENOM']; ?>
    <br>

    <span>Mail : </span><br>
    <?php echo $compte["MAIL"];?>
    <br><br>

    <span>Adresse :</span><br>
    <?php echo $compte["NUMRUE"]." ".$compte["NOMRUE"]."<br>".$compte["CODEPOSTAL"]."".$compte["VILLE"]."<br>".$compte["PAYS"]; ?>
    <br><br>
    <button><a href="modificationCompte.php">Modifier mes informations</a></button><br>
    <button><a href="modificationMdp.php">Modifier mon mot de passe</a></button><br>
    <button><a href="deconnexion.php">Deconnexion</a></button> <br>
    <button onclick="suppression()">Supprimer mon compte</button>

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
