<?php
if (isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['mail']) && isset($_POST['message'])) {
    //test format prenom
    if (!preg_match("#^[a-z]+$#i", $_POST['prenom'])) {
        header("Location: formContact.php?erreur=Format du prénom invalide");
        exit();
    }

    //test format nom
    if (!preg_match("#^[a-z]+$#i", $_POST['nom'])) {
        header("Location: formContact.php?erreur=Format du nom invalide");
        exit();
    }
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
