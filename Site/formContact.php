<!DOCTYPE html>

<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <link rel="stylesheet" href="include/css/style.css" type="text/css">
      <title>Nous Contacter</title>
    <?php include_once('include/icon.php');?>
</head>
<body id='bodyDeFormulaire'>

<?php
    include_once('include/header.php');
    include_once('include/menu.php');
?>

<div id="maindiv">
    <div class="formulaire">
        <h1>Contact</h1>
        <?php
            if (isset($_GET['error'])) {
                echo"<span id='error'>".htmlspecialchars($_GET['error'])."</span>";
            }
        ?>
        <form action="traitContact.php" method="POST">
            Nom : <br>
            <input type="text" name="nom" required><br><br>
            Prénom : <br>
            <input type="text" name="prenom" required><br><br>
            Adresse email: <br>
            <input type="email" name="email" required><br><br>
            Message : <br>
            <textarea name="message" id="messageContact"></textarea><br>
            <input type="submit" value="Continuer" name="continuer">
        </form>
    </div>
</div>
<br><br><br><br><br>

<?php
    include_once('include/footer.php');
?>

</body></html>
