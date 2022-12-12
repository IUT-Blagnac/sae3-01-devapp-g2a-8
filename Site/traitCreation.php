<?php
    
    session_start();
    require_once("include/connect.inc.php");
    if ((isset($_POST['email']) && isset($_POST['mdp']) && isset($_POST['continuer']) 
    && isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['verifmdp']))) {
        if (!preg_match("#^\\S+@\\S+\\.\\S+$#", $_POST['email'])){
            header("Location: formCreation.php?error=format de l'email invalide");
            exit();
        }
        if (!preg_match("#[a-z]+#i", $_POST['prenom'])){
            header("Location: formCreation.php?error=format du prenom invalide");
            exit();
        }
        if (!preg_match("#[a-z]+#i", $_POST['nom'])){
            header("Location: formCreation.php?error=format du nom invalide");
            exit();
        }
        if ($_POST['mdp']!=$_POST['verifmdp']){
            header("Location: formCreation.php?error=les mots de passe ne sont pas égaux");
            exit();
        }
        if (!preg_match("#^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[\#?!@/\\$%^&*}{)([\]~,;:_'-]).{12,}$#", $_POST['mdp'])){
            header("Location: formCreation.php?error=Le mot de passe doit faire au moins 12 caractères, doit contenir des catactères spéciaux, minuscules et majuscules et chiffres");
            exit();
        }

        //connexion à la BD
        //récup du mdp hashé de la bd
        //comparaison avec password_verify()
        //variable session

    }
?>
