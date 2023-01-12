<?php
error_reporting(0);
//test variable session sinon redirige vers formConnexion avec erreur
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
if (!isset($_POST['payer'])) {
    header("Location: formPaiement.php?erreur=Veuillez procéder au paiement");
    exit();
} else {
    require('include/connect.inc.php');
    require('gestionPanier.php');

    //récupérer la prochaine séquence
    $req = "SELECT COMMANDE_ID_SEQ.nextval from DUAL";
    $st = oci_parse($conn, $req);
    $result = oci_execute($st);
    $numCommande = oci_fetch_assoc($st)['NEXTVAL'];
    oci_free_statement($st);

    //récup des produits
    $produits = recupererProduits();

    // calcul du montant total
    $montantTot = 0;
    for ($i = 0; $i < count($produits['prixPromo']); $i++) {
        $montantTot = $montantTot + $produits['prixPromo'][$i];
    }

    //insertion d'une nouvelle commande
    $req = "INSERT INTO COMMANDE(NUMC, MONTANT, DATEC, UTILISATEUR) VALUES(:p_numc, :p_montant, TO_DATE(:p_datec,'YYYY-MM-DD'), :p_utilisateur)";
    $st = oci_parse($conn, $req);
    oci_bind_by_name($st, ":p_numc", $numCommande);
    oci_bind_by_name($st, ":p_montant", $montantTot);
    $dateC = date("Y-m-d");
    oci_bind_by_name($st, ":p_datec", $dateC);
    $id = $_SESSION['id'];
    oci_bind_by_name($st, ":p_utilisateur", $id);
    $result = oci_execute($st);
    oci_free_statement($st);
    oci_commit($conn);

    //insertion des détails de commande

     //on forme un bloc pl/sql anonyme
    $reqInsertDC = " begin ";
    for ($i = 0; $i < count($produits['id']); $i++) {
        $reqInsertDC .= "INSERT INTO DETAILCOMMANDE(COMMANDE, PRODUIT, COULEUR, QTE) VALUES(:p_commande$i, :p_produit$i, ";
        $couleurP = $produits['couleur'][$i];
        $reqInsertDC .="'".$couleurP."'";
        $reqInsertDC .= ", :p_qte$i); ";
    }
    $reqInsertDC .= "end; ";
    $st = oci_parse($conn, $reqInsertDC);

    for ($i = 0; $i < count($produits['id']); $i++) {
        $numProduit = $produits['id'][$i];
        $qteCommandeProduit = $produits['qte'][$i];
        oci_bind_by_name($st, ":p_commande$i", $numCommande);
        oci_bind_by_name($st, ":p_produit$i", $numProduit);
        oci_bind_by_name($st, ":p_qte$i", $qteCommandeProduit);
    }
    $result = oci_execute($st);
    if (!$result) {
        echo "erreur : \n";
        echo oci_error($st)['message'];
        echo oci_error($st)['sqltext'];
    } else {
        oci_free_statement($st);
        oci_commit($conn);
        oci_close($conn);
        ?>
        <script>
            alert("Votre commande a bien été enregistrée");
            window.location.replace("index.php");
        </script>
        <?php
    }
}
