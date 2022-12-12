<?php
    session_start();
    require_once("include/connect.inc.php");
    if (isset($_POST['email']) && isset($_POST['mdp']) && isset($_POST['continuer'])) {
        
        //test format mail
        if (!preg_match("#^\\S+@\\S+\\.\\S+$#", $_POST['email'])) {
            header("Location: formConnexion.php?error=format de l'email invalide");
            exit();
        }

        //connexion à la BD
        $req="SELECT mail, mdp, administrateur FROM Utilisateur WHERE mail=:pMail";
        $st=oci_parse($conn, $req);
        oci_bind_by_name($st, ":pMail", $_POST['email']);
        $result=oci_execute($st);
        if (!$result) {
            $e = oci_error($st);
            print htmlentities($e['message'].' pour cette requete : '.$e['sqltext']);
        }
        $compte=oci_fetch_assoc($st);

        // si aucun compte sélectionné
        if (!$compte) {
            header("Location: formConnexion.php?error=compte inexistant");
            exit();
        }

        //comparaison du mdp avec password_verify()
        if (!password_verify($_POST['mdp'], $compte['MDP'])) {
            header("Location: formConnexion.php?error=mot de passe incorrect");
            exit();
        }

        //variable session
        if ($compte['ADMINISTRATEUR']=='Admin') {
            $_SESSION['connexion']='admin';
        } else {
            $_SESSION['connexion']='client';
        }
        oci_free_statement($st);

        //renvoie vers la page voulue ou l'index
        if (isset($_GET['connDest'])) {
            header("Location: ".htmlentities($_GET['connDest']));
            exit();
        } else {
            header("Location: index");
            exit();
        }

        //cookie
        if (isset($_POST['memo'])) {
            setcookie("connexion", htmlentities($_POST['email']), time()+60*20); //créer cookie 20min
        } else {
            setcookie("connexion", htmlentities($_POST['email']), time()-1); //détruire cookie
        }

    }
