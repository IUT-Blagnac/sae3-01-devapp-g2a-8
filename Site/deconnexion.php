<?php
    session_start();
    session_destroy(); //efface la variable session, donc déconnecte
    header("Location: index.php");
    exit();
