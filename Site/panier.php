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
    ?>
    <div id="maindiv">

        <div id='panier'>
            <?php
            if (estVide()) {
                echo "<h1>Vous n'avez pas encore d'article dans votre panier</h1>";
            } else {
            ?>
                <h2>Mon panier &emsp;&emsp;&emsp;&emsp;&emsp;
                    <?php
                    if (isset($_GET['erreur'])) {
                        echo "<span id='error'>" . htmlspecialchars($_GET['erreur']) . "</span>";
                    } ?>
                </h2>
                <?php

                $produits = recupererProduits();
                for ($i = 0; $i < count($produits['id']); $i++) {
                    echo "<div class='itemPanier'>";
                    $id = $produits['id'][$i];
                    $color = $produits['couleur'][$i];

                    echo "<h3>" . $produits['nom'][$i] . "</h3>";
                    echo "<img src='include/produits/" . $id . ".jpg' alt='" . $produits['nom'][$i] . "'>";
                    echo "<div id='descriptionPanier'>";
                    echo "Couleur : " . $color;
                    echo "
                            <form action='enregistrerQte.php?id=$id&couleur=$color' method='post'>
                                Quantité :
                                <input type='number' name='qte' value='" . $produits['qte'][$i] . "' id='qte' min='1' max='999' step='1' required/>
                                <input type='submit' value='Modifier' id='modifier'><br>
                            </form>
                        ";

                    if ($produits['promo'][$i] > 0) {
                        echo "<span id='promo'>PROMO -" . ($produits['promo'][$i] * 100) . "%</span>";
                        echo "<del> Prix : " . $produits['prix'][$i] . "€ </del><span id='promo'> " . round($produits['prixPromo'][$i], 2, PHP_ROUND_HALF_UP) . " €</span>";
                    } else {
                        echo "Prix : " . $produits['prix'][$i] . " €";
                    }
                    echo "</div>";

                    echo "<br><a href='supprimerArticle.php?id=$id&couleur=$color'><img src='include/logos/supprimer.png' alt='Supprimer' id='supprimer'></a>";
                    echo "</div>";
                }
                ?>
                <div id="droitePanier">
                    <h3>Prix total : <?php echo round(array_sum($produits['prixPromo']), 2, PHP_ROUND_HALF_UP)." €"; ?></h3>
                    <a href="commander.php"><button id="btnCommander">Passer commande</button></a>
                </div>
            <?php
            }
            ?>
        </div>
    </div>
    <br><br><br><br><br>

    <?php
    include_once('include/footer.php');
    ?>

</body>

</html>