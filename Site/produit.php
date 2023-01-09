<?php
if (!isset($_GET['id'])) {
    header("Location: index.php");
    exit();
}

require('include/connect.inc.php');

$req = "SELECT * FROM Produit WHERE nump=:pNumP";
$st = oci_parse($conn, $req);
oci_bind_by_name($st, ":pNumP", $_GET['id']);
$result = oci_execute($st);
$produit = oci_fetch_assoc($st);
oci_free_statement($st);

if (!$produit) {
    header("Location: index.php");
    exit();
}

$req = "SELECT couleur, qte FROM Stock WHERE produit=:pNumP";
$st = oci_parse($conn, $req);
oci_bind_by_name($st, ":pNumP", $_GET['id']);
$result = oci_execute($st);
oci_fetch_all($st, $couleurs);
oci_free_statement($st);
oci_close($conn);

include_once('gestionPanier.php');

$erreur = "";
//Ajout du produit au panier si le formulaire à été validé
if (isset($_POST['ajouter'])) {
    $idP = htmlentities($_GET['id']);
    $coulP = htmlentities($_POST['couleurs']);
    $qteP = htmlentities($_POST['qte']);

    try {
        ajouterAuPanier($idP, $coulP, $qteP);
    } catch (Exception $e) {
        $erreur = $e->getMessage();
    }
}

?>

<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title><?php echo $produit["NOM"] ?></title>
    <?php include_once('include/icon.php'); ?>
</head>

<body>
    <?php
    include_once('include/header.php');
    include_once('include/menu.php');
    ?>

    <div id="maindiv">
        <div id="produit">
            <div id="gauche">
                <h1><?php echo $produit["NOM"] ?></h1>
                <?php
                echo "<img src='include/produits/" . $produit['NUMP'] . ".jpg' alt='" . $produit['NOM'] . "'>";
                ?>
                <h3>Description du produit : </h3>
                <p><?php echo str_replace("- ", "<br><br> - ", $produit['DESCRIPTIF'], $count) ?></p>
            </div>
            <div id="droite">
                <?php echo "<span id='error'>" . $erreur . "</span>" ?>
                <h3><?php echo $produit["NOM"] ?></h3>
                <form method="post">
                    Quantité : <input type='number' name='qte' value='1' id='qteProduit' min='1' max='999' step='1' required /><br>
                    Couleur :
                    <select name="couleurs" id="couleurs-select" required>
                        <?php
                        for ($i = 0; $i < count($couleurs['COULEUR']); $i++) {
                            print($couleurs['COULEUR'][$i]);
                            if (verifStock($_GET['id'], $couleurs['COULEUR'][$i], 1)) {
                                echo "<option value='" . $couleurs['COULEUR'][$i] . "' name='" . $couleurs['COULEUR'][$i] . "'>" . $couleurs['COULEUR'][$i] . "</option>";
                            } else {
                                echo "<option value='" . $couleurs['COULEUR'][$i] . "' name='" . $couleurs['COULEUR'][$i] . "' disabled>" . $couleurs['COULEUR'][$i] . " (en rupture)</option>";
                            }
                        }
                        ?>
                    </select><br>
                    <?php
                    if ($produit['PROMO'] > 0) {
                        echo "<span id='promo'>PROMO -" . ($produit['PROMO'] * 100) . "%</span>";
                        echo "<h4><del>Prix : " . $produit['PRIX'] . "€ </del><span id='promo'> " . round($produit['PRIX'] - ($produit['PRIX'] * $produit['PROMO']), 2, PHP_ROUND_HALF_UP) . " €</span></h4>";
                    } else {
                        echo "<h4>Prix : " . $produit['PRIX'] . " €</h4>";
                    }
                    ?>
                    <br>
                    <input type="submit" name="ajouter" value="Ajouter au panier"><br>
                </form>
                <?php
                if (session_status() != PHP_SESSION_ACTIVE) {
                    session_start();
                }
                if (isset($_SESSION['connexion'])) {
                    if ($_SESSION['connexion'] == 'admin') {
                        echo "<a href='#'><button id='btnAdmin'>Modifier le produit</button></a><br>";
                        echo "<a href='#'><button id='btnAdmin'>Supprimer le produit</button></a><br>";
                    }
                }
                ?>
            </div>
        </div>
    </div>
    <br><br><br><br><br>
    <?php
    include_once('include/footer.php');
    ?>

    <script>
        // récupération des éléments de sélection de quantité et de couleur
        const inputQte = document.getElementById("qteProduit");
        const selectCouleur = document.getElementById("couleurs-select");

        //conversion du tableau php contenant couleurs/qte en un tableau js 
        <?php
        $js_array = json_encode($couleurs);
        echo "var couleurs = " . $js_array . ";\n";
        ?>

        //changement de la qte max lorsque la page est chargée
        indiceCouleur = couleurs["COULEUR"].indexOf(selectCouleur.value);
        inputQte.setAttribute("max", couleurs["QTE"][indiceCouleur]);

        //listener qui va exécuter la fonction changerMaxQte si un changement est détecté sue le sélecteur de couleur
        selectCouleur.addEventListener("change", function changerMaxQte(event) {
            //récupération de l'indice de la couleur et utilisation de celui-ci pour remplacer la qtx max
            indiceCouleur = couleurs["COULEUR"].indexOf(selectCouleur.value);
            inputQte.setAttribute("max", couleurs["QTE"][indiceCouleur]);

            //si une qte déjà entrée est supérieure à la nouvelle qte max, on la met eu nouveau max
            if (parseInt(inputQte.value) > parseInt(couleurs["QTE"][indiceCouleur])) {
                inputQte.value = couleurs["QTE"][indiceCouleur];
            }
        });

        //listener qui va exécuter la fonction majQte si un changement est détecté sur le sélecteur de quantité
        inputQte.addEventListener("change", function majQte(event) {
            //récupération de la qte max
            qteMax = inputQte.getAttribute("max");
            //si une qte déjà entrée est supérieure à la qte max, on la met au max
            console.log(inputQte.value);
            console.log("is a " + typeof(parseInt(inputQte.value)));
            console.log(qteMax);
            console.log("is a " + typeof(parseInt(qteMax)));
            if (parseInt(inputQte.value) > parseInt(qteMax)) {
                console.log(inputQte.value + ">" + qteMax);
                inputQte.value = qteMax;
            }
        });
    </script>

</body>

</html>