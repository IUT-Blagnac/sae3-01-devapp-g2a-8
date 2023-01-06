<header id="main">
	<!--Le premier div qui contient le logo et le slogan-->
	<div class="header">
		<a href="index.php">
			<img src="include/logos/logo.png" alt="Logo" id="logo">
			<h4>From East to West, VideoFest</h4>
		</a>
	</div>
	<!--La fonctionnalite de hamburger menu-->
	<span onclick="openNav()"><img src="include/logos/menu.png" alt="Menu" id="hamburger"></span>
	<!--L'icone de compte. -->
	<a href="compte.php"><img src="include/logos/compte.png" alt="Compte" id="account"></a>
	<?php
	if (session_status() != PHP_SESSION_ACTIVE) {
		session_start();
	}
	if (isset($_SESSION['connexion'])) {
		if ($_SESSION['connexion'] == 'client' || $_SESSION['connexion'] == 'admin') {
			echo "<a href='panier.php'><img src='include/logos/panier.png' alt='Panier' id='panierLogo'></a>";
		}
	}
	?>
	<form action="rechercheProduits.php" method="get" id="recherche">
		<input type="text" name="nom" placeholder="Rechercher un produit" />
		<input type="submit" value="Rechercher" />
	</form>
	<?php
	if (isset($_GET['categorie'])) {
		require('include/connect.inc.php');

		$req = "SELECT * FROM Categorie WHERE categorieParente=:pCategorieParente";
		$st = oci_parse($conn, $req);
		oci_bind_by_name($st, ":pCategorieParente", $_GET['categorie']);
		$result = oci_execute($st);
		oci_fetch_all($st, $categories);
		oci_free_statement($st);
		oci_close($conn);
		
		if ($result) {
			echo "<ul id='sousCategories'>";
			for ($i=0; $i < count($categories['NOM']); $i++) { 
				echo "<li class='sousCategories'><a href='rechercheProduits?categorie=".$categories['NOM'][$i]."'>".$categories['NOM'][$i]."</a></li>";
			}
			echo "</ul>";
		}
	}
	?>

</header>
