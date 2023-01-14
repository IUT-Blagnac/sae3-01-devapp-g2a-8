<?php
if (session_status() != PHP_SESSION_ACTIVE) {
    session_start();
}
if (isset($_SESSION['connexion'])) {
    if ($_SESSION['connexion'] != 'admin') {
        header("Location: index.php");
        exit();
    }
} else {
    header("Location: index.php");
    exit();
}

//récupérer les catégories
include('include/connect.inc.php');

$req = "SELECT * FROM CATEGORIE WHERE CATEGORIEPARENTE IS NOT NULL";
$st = oci_parse($conn, $req);
$result = oci_execute($st);
oci_fetch_all($st, $cat);
oci_free_statement($st);

//récupérer les couleurs
$req = "SELECT * FROM COULEUR";
$st = oci_parse($conn, $req);
$result = oci_execute($st);
oci_fetch_all($st, $couleurs);
oci_free_statement($st);

?>


<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Ajouter un produit</title>
    <?php include_once('include/icon.php'); ?>
</head>

<body>
    <?php
    include_once('include/header.php');
    include_once('include/menu.php');
    ?>
    <div id="maindiv">
        <div class="formulaire">
            <?php
            if (isset($_GET['erreur'])) {
                echo "<span id='error'>" . htmlspecialchars($_GET['erreur']) . "</span>";
            }
            ?>
            <h1>Ajouter un produit</h1>
            <form action="traitCreationProduit.php" method="POST" id="ajoutProduit">
                <br>Nom du produit : <br>
                <input type="text" name="nom" required><br>
                <br>Descriptif : <br>
                <textarea name="descriptif" rows="5" cols="33" required></textarea><br>
                <br>Marque : <br>
                <input type="text" name="marque" required><br>
                <br>Catégorie :
                <select name='categorie'>
                    <?php
                    //boucler les catégories enfantes (parent == null) et les mettre dans une balise option
                    for ($i = 0; $i < count($cat['NOM']); $i++) {
                        $val = $cat['NOM'][$i];
                        $option = $cat['CATEGORIEPARENTE'][$i] . " : " . $val;
                        echo "<option value='$val'>$option</option>";
                    }
                    ?>
                </select>
                <!-- liste des couleurs, checkbox et stocks-->
                <table id='stockCouleurs'>
                    <caption>Stocks : </caption>
                    <th></th><th>&nbsp;&nbsp;&nbsp;&nbsp;Couleur</th><th>&nbsp;Quantité</th>
                    <?php
                    //boucler sur tr: checkbox, couleur, stock
                    for ($i = 0; $i < count($couleurs['NOM']); $i++) {
                        $val = $couleurs['NOM'][$i];
                        echo "<tr><td><input type='checkbox' name='couleur[]' id='checkQte$i' class='checkQteClass' value='$val' onchange='changerVisibilite($i)'></td>
                        <td class='txtCouleur'>$val</td>
                        <td class='classQteCouleur'><input type='number' id='qteCouleur$i' name='stock[]' min='1' step='1' id='$val' disabled></td></tr>";
                    }
                    ?>
                </table>
 
                <br>
                <br>Prix :
                <input type="number" name="prix" value="1" min="0" step=".01" class="prix" required>€<br>
                <br>Promo :
                <input type="number" name="promo" value="0" min="0" max="100" step="1" class="prix" required>%<br>
                <!-- A ajouter quand le problème de serveur sera résolu
                <br>Ajouter une image :
                <input type="file" name="image" accept="image/.jpg"><br> -->
                <input type="submit" value="Ajouter" name="ajouter">
            </form>
        </div>
    </div>

    <br><br><br><br><br>

    <script>
        //active l'input type number si la case correspondante est cochée
        function changerVisibilite(index) {
            var inputNumberId = 'qteCouleur' + index;
            const inputQte = document.getElementById(inputNumberId);
            if (inputQte.disabled == false) {
                inputQte.disabled = true;
                inputQte.value = '';
                inputQte.required = false;
            } else if (inputQte.disabled == true) {
                inputQte.disabled = false;
                inputQte.required = true;
                inputQte.value = 1;
            }
        }

        //force qu'au moins une case soit cochée
        const casesCouleur = document.getElementsByClassName('checkQteClass');
        const nbCases = casesCouleur.length;
        const premiereCase = nbCases > 0 ? casesCouleur[0] : null;

        function init() {
            if (premiereCase) { 
                for (let i = 0; i < nbCases; i++) {
                    casesCouleur[i].addEventListener('change', checkValidity);
                }
                
                checkValidity();
            }
        }

        function isChecked() {
            for (let i = 0; i < nbCases; i++) {
                if (casesCouleur[i].checked) return true;
            }

            return false;
        }

        function checkValidity() {
            const errorMessage = !isChecked() ? 'Au moins une case doit être cochée.' : '';
            premiereCase.setCustomValidity(errorMessage);
        }

        init();
    </script>

    <?php
    include_once('include/footer.php');
    ?>

</body>