<?php
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
?>
<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Mon panier</title>
    <?php include_once('include/icon.php'); ?>
</head>

<body>
    
        <?php
        include_once('include/header.php');
        include_once('include/menu.php');
        include_once('gestionPanier.php');

        if (isset($_GET['erreur'])) {
            echo "<span id='error'>" . htmlspecialchars($_GET['erreur']) . "</span>";
        }

        //ajouterAuPanier(227, "blanc", 3);
        //supprimerProduit(227);
        if (estVide()) {
            echo "Vous n'avez pas encore d'article dans votre panier";
        } else {
        ?>
        <div id="maindiv">
            <div id='panier'>
                <table>
                    <caption>Mon Panier</caption>
                    <tr>
                        <th>Produit</th>
                        <th>Couleur</th>
                        <th>Quantité</th>
                        <th>Prix</th>
                        <th>Supprimer</th>
                    </tr>
                    <?php
                    $produits = recupererProduits();
                    for ($i = 0; $i < count($produits['id']); $i++) {
                        echo "<tr>";
                        $id = $produits['id'][$i];
                        echo "<th>" . $produits['nom'][$i] . "</th>";
                        echo "<th>" . $produits['couleur'][$i] . "</th>";
                        echo "<th>
                            <form action='enregistrerQte.php?id=$id' method='post'>
                                <input type='number' name='qte' value='" . $produits['qte'][$i] . "' id='qte' min='1' max='999' step='1' required/>
                                <input type='submit' value='Modifier' id='modifier'>
                            </form>
                        </th>";
                        echo "<th>" . $produits['prix'][$i] . "</th>";
                        echo "<th><a href='supprimerArticle.php?id=$id'><img src='include/logos/supprimer.png' alt='Supprimer' id='supprimer'></a></th>";
                        echo "</tr>";
                    }
                    var_dump($_SESSION['panier']);
                    ?>
                </table>
            </div>
    </div>
    <a href="commander.php"><button>Passer Commande</button></a>

<?php
        }
        include_once('include/footer.php');
?>

</body>

</html>
