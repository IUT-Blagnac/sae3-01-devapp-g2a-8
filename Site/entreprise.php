<!DOCTYPE html>

<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="include/css/style.css" type="text/css">
    <title>Notre entreprise</title>
    <?php include_once('include/icon.php'); ?>
</head>

<body>

    <?php
    include_once('include/header.php');
    include_once('include/menu.php');
    ?>
    <div id="maindiv">
        <div id="entdiv">
            <div class="ent">
                <img src="include/logos/BlackLogo.png" alt="Logo" id="Blacklogo">
                <h2 class="underline font1">Notre entreprise</h3><br>
                    <img src="include/logos/equipe.png" alt="equipe" id="equipe">

                    <span class="left">
                        <h3 class="underline left">Qui sommes-nous ?</h3>
                        <p>VideoFest est une start-up française implantée à Toulouse et créée en 2021 par les
                            cofondateurs Vignal Alexandre, Dourlent Maxime, Fernandez Mickael et Straputicari
                            Luca.<br>
                            Anciennement tournée sur des gammes d’appareils-photos, VideoFest s'est
                            ensuite tournée vers les périphériques informatiques.<br>
                            Nos produits sont universels et accessibles pour tous, notre objectif : proposer des
                            produits avec un prix légèrement inférieur à la concurrence.<br>
                            VideoFest et ses produits s’adressent à tout type de clients, aussi bien pour des usages
                            professionnels ou particuliers ou bien même pour des clients à l’aise en technologie mais aussi des
                            novices dans le domaine.
                        </p>
                        <br>
                    </span>
                    <span class="left">
                        <h3 class="underline left">Coordonnées/Hébergement</h3>
                        <ul>
                            <li>Sièges social à Toulouse.</li>
                            <li>Site web hébergé sur des serveur SSH de l'iut de Blagnac.</li>
                        </ul>
                        <br>
                    </span>
            </div>
        </div>
    </div>

    <?php
    include_once('include/footer.php');
    ?>

</body>

</html>