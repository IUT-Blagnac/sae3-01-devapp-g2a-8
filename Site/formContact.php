<!DOCTYPE html>

<html lang="fr"><head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <link rel="stylesheet" href="include/css/style.css" type="text/css">
      <title>SAE</title>
<body>

<?php    
    if (isset($_GET['error'])) {
        echo"<h2>".htmlspecialchars($_GET['error'])."</h2>";
    }
    include('include/header.php');
    include('include/menu.php');
    /*require_once('include/connect.inc.php');
    $stid = oci_parse($conn, 'SELECT * from users');
    oci_execute($stid);*/
?>

<h1>Contact</h1>
<form action="traitCreation.php" method="POST">
    Nom : <br>
    <input type="text" name="nom" required><br><br>
    Prénom : <br>
    <input type="text" name="prenom" required><br><br>
    Adresse email: <br>
    <input type="email" name="email" required><br><br>
    Message : <br>
    <textarea name="message" style="width: auto; height: 50%;"></textarea><br>
    <input type="submit" value="Continuer" name="continuer">
    
</form>
<br><br><br><br><br>

<?php
    include('include/footer.php');
?>

</body></html>

</body></html>
