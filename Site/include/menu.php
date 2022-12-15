<div id="mySidenav" class="sidenav">
	<a href="javascript:void(0)" onclick="closeNav()" id="closeMenu"><img src="include/logos/menu.png" alt="FermerMenu" id="hamburger2"></a>
	<a href="index.php"><i class="glyphicon glyphicon-triangle-right"></i>Accueil</a>
	<a href="compte.php"><i class="glyphicon glyphicon-triangle-right"></i>Connexion/Inscription</a>
	<span id="triangle" onclick="changeIcon()" class="dropdown-btn"><i  class="glyphicon glyphicon-triangle-right" ></i>Nos produits</span>
	<div class="dropdown-container">
		<a href="#"><i class="glyphicon glyphicon-triangle-right"></i>Cat 1</a>
		<a href="#"><i class="glyphicon glyphicon-triangle-right"></i>Cat 2</a>
	</div>
    <img src="include/logos/logo.png" alt="Logo" id="logoMenu">
</div>

<script>
/* Prend tout les élements de dropdown menu, et les affiche un par*/
	var dropdown = document.getElementsByClassName("dropdown-btn");
	var i;

	for (i = 0; i < dropdown.length; i++) {
		dropdown[i].addEventListener("click", function() {
			this.classList.toggle("active");
			var dropdownContent = this.nextElementSibling;
			if (dropdownContent.style.display === "block") {
				dropdownContent.style.display = "none";
			} else {
				dropdownContent.style.display = "block";
			}
		});
	}
	/*Change la taille de menu, et le blur de la page*/
	function openNav() {
		document.getElementById("main").style.filter = "blur(4px)";
		document.getElementById("end").style.filter = "blur(4px)";
		document.getElementById("mySidenav").style.width = "250px";
		document.getElementById("maindiv").style.filter = "blur(4px)";

	}
	/*Change la taille de menu, et le blur de la bage*/
	function closeNav() {
		document.getElementById("main").style.filter = "blur(0px)";
		document.getElementById("end").style.filter = "blur(0px)";
		document.getElementById("mySidenav").style.width = "0";
		document.getElementById("maindiv").style.filter = "blur(0px)";

	}
	/*Si l'icone que on a dans le button est vers la droite, on la met vers le bas, et l'inverse*/
	function changeIcon() {
		if(document.getElementById("triangle").innerHTML=='<i class="glyphicon glyphicon-triangle-right"></i>Nos produits'){
			document.getElementById("triangle").innerHTML = '<i class="glyphicon glyphicon-triangle-bottom"></i>Nos produits';
		}
		else if(document.getElementById("triangle").innerHTML=='<i class="glyphicon glyphicon-triangle-bottom"></i>Nos produits'){
			document.getElementById("triangle").innerHTML = '<i class="glyphicon glyphicon-triangle-right"></i>Nos produits';
		}
	}
</script>
