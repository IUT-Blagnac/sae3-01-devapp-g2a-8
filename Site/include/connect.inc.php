<?php
$user = "SAEBD08";
$mdp = "saechiante8";
$db = "(DESCRIPTION =
			(ADDRESS = (PROTOCOL = TCP)(HOST = oracle.iut-blagnac.fr)(PORT = 1521))
			(CONNECT_DATA =
			    (SERVER = DEDICATED)
			    (SID = db11g)
			)
		  )";
//changement de la connexion pour spécifier l'encodage (AL32UTF8, comme utf 8 mais mieux)
//$conn = oci_connect($user, $mdp, $db);
$conn = oci_connect($user, $mdp, $db, $character_set = 'AL32UTF8');


// si la connexion a échoué, on affiche le message d'erreur
if (!$conn) {
	$e = oci_error();
	trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}
