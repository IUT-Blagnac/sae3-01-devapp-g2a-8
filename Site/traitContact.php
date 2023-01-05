<?php
if (isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['mail']) && isset($_POST['message'])) {
?>
    <script>
        alert("Votre message a bien été envoyé");
        window.location.replace("index.php");
    </script>
<?php
} else {
    header("Location: formContact.php?erreur=Veuillez remplir tous les champs");
    exit();
}
