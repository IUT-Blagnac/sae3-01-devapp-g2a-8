<?php //se connecte à la BD est récupère les produits demandés
    if (!isset($_GET['categorie']) && !isset($_GET['nom'])) {
        header("Location: index.php");
        exit();
    }

    if (session_status() != PHP_SESSION_ACTIVE) {
        session_start();
    }

    require('include/connect.inc.php');

    //recherche par categorie
    if (isset($_GET['categorie'])) {

        $recherche=htmlentities($_GET['categorie']);

        $req = "SELECT DISTINCT * FROM Produit
                WHERE categorie IN (SELECT nom FROM Categorie WHERE categorieparente IS NULL AND nom=:pCategorie
                                    UNION
                                    SELECT nom FROM Categorie WHERE categorieparente=:pCategorie)
                OR categorie=:pCategorie";
        $st = oci_parse($conn, $req);
        oci_bind_by_name($st, ":pCategorie", $recherche);
        $result = oci_execute($st);
        oci_fetch_all($st, $produits);
        oci_free_statement($st);
        oci_close($conn);

    } else { //recherche par nom

        $recherche=htmlentities($_GET['nom']);

        $req = "SELECT * FROM Produit
                WHERE nom=:pNom";
        $st = oci_parse($conn, $req);
        oci_bind_by_name($st, ":pNom", $recherche);
        $result = oci_execute($st);
        oci_fetch_all($st, $produits);
        oci_free_statement($st);
        oci_close($conn);

    }
    $_SESSION['recherche']=$produits;
    header("Location: listeProduits.php?affichage=$recherche");
    exit();
