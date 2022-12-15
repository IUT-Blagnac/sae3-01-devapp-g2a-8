<?php
    //test variable session sinon redirige vers formConnexion avec erreur
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
    <title>Modifier mes infos</title>
    <?php include_once('include/icon.php');?>
<body>

<?php
    include_once('include/header.php');
    include_once('include/menu.php');

    require_once('include/connect.inc.php');

    //connexion et récupération des infos pour réremplir champs
    $req="SELECT * FROM Utilisateur WHERE numU=:pNumU";
    $st=oci_parse($conn, $req);
    oci_bind_by_name($st, ":pNumU", $_SESSION['id']);
    $result=oci_execute($st);
    $compte=oci_fetch_assoc($st);
    oci_free_statement($st);
    oci_close($conn);
?>
<div id="maindiv">
    <div class="formulaire">
        <?php
            if (isset($_GET['error'])) {
                echo"<span id='error'>".htmlspecialchars($_GET['error'])."</span>";
            }
        ?>
        <h1>Modifier mes informations</h1>
        <form action="traitModificationCompte.php" method="POST">
            Nom : <br>
            <input type="text" name="nom" <?php echo "value=".$compte['NOM']?> required><br><br>
            Prénom : <br>
            <input type="text" name="prenom" <?php echo "value=".$compte['PRENOM']?> required><br><br>
            Adresse email: <br>
            <input type="email" name="email" <?php echo "value=".$compte['MAIL']?> required><br><br>
            Nom de la rue <br>
            <input type="text" name="nomrue" <?php echo "value=".$compte['NOMRUE']?> ><br><br>
            Numéro de la rue : <br>
            <input type="text" name="numrue" <?php echo "value=".$compte['NUMRUE']?> ><br><br>
            Code postal : <br>
            <input type="text" name="codepostal" <?php echo "value=".$compte['CODEPOSTAL']?> ><br><br>
            Ville : <br>
            <input type="text" name="ville" <?php echo "value=".$compte['VILLE']?> ><br><br>
            Pays : <br>
            <input type="text" name="pays" <?php echo "value=".$compte['PAYS']?> ><br><br>
            <input type="submit" value="Continuer" name="continuer">
        </form>
    </div>
</div>
<br><br><br><br><br>

<?php
    include_once('include/footer.php');
?>

</body></html>
