<?php

function estVide()
{
    if (session_status() != PHP_SESSION_ACTIVE) {
        session_start();
    }


    if (!isset($_SESSION['panier'])) {
        $_SESSION['panier'] = array();
        $_SESSION['panier']['id'] = array();
        $_SESSION['panier']['nom'] = array();
        $_SESSION['panier']['couleur'] = array();
        $_SESSION['panier']['qte'] = array();
        $_SESSION['panier']['prix'] = array();

        return true;
    }

    return sizeof($_SESSION['panier']['nom']) == 0;
}

function ajouterAuPanier($idProduit, $couleur, $qte)
{
    if (session_status() != PHP_SESSION_ACTIVE) {
        session_start();
    }
    if (!isset($_SESSION['panier'])) {
        $_SESSION['panier'] = array();
        $_SESSION['panier']['id'] = array();
        $_SESSION['panier']['nom'] = array();
        $_SESSION['panier']['couleur'] = array();
        $_SESSION['panier']['qte'] = array();
        $_SESSION['panier']['prix'] = array();
    }

    require('include/connect.inc.php');
    # récupération du produit
    $reqProduit = 'SELECT NOM, PRIX, PROMO FROM PRODUIT WHERE NUMP=:pNumP';
    $st = oci_parse($conn, $reqProduit);
    oci_bind_by_name($st, ":pNumP", $idProduit);
    $resultProduit = oci_execute($st);
    $produit = oci_fetch_assoc($st);
    oci_free_statement($st);

    $nomP = $produit['NOM'];
    $prixP = $produit['PRIX'];
    $promoP = $produit['PROMO'];


    $req = " begin :retour := VERIFICATIONSTOCK(:pNump, :pCouleur, :pQte); end; ";
    $st = oci_parse($conn, $req);
    oci_bind_by_name($st, ":retour", $retour, 40);
    oci_bind_by_name($st, ":pNumP", $idProduit);
    oci_bind_by_name($st, ":pCouleur", $couleur);
    oci_bind_by_name($st, ":pQte", $qte);
    $resultStock = oci_execute($st);

    if ($retour) {
        $indexeP = estPresent($idProduit);
        if ($indexeP != -1) {
            $qte = intval($qte);
            var_dump($qte);
            $nouvQte = $qte + intval($_SESSION['panier']['qte'][$indexeP]);
            modifierQuantite($idProduit, $nouvQte);
        } else {
            array_push($_SESSION['panier']['id'], $idProduit);
            array_push($_SESSION['panier']['nom'], $nomP);
            array_push($_SESSION['panier']['couleur'], $couleur);
            array_push($_SESSION['panier']['qte'], $qte);
            array_push($_SESSION['panier']['prix'], $prixP * $qte);
        }
    } else {
        throw new Exception("Error Processing Request");
    }
    oci_free_statement($st);
    oci_close($conn);
}

function recupererProduits()
{
    if (session_status() != PHP_SESSION_ACTIVE) {
        session_start();
    }

    return $_SESSION['panier'];
}

function modifierQuantite($id, $qte)
{
    //test stock
    //throw new Exception('Pas assez de stock pour cet article');

    var_dump($qte);
    /* On compte le nombre d'articles différents dans le panier */
    $nbArticles = count($_SESSION['panier']['id']);
    /* On parcoure le tableau de session pour modifier l'article précis. */
    for ($i = 0; $i < $nbArticles; $i++) {
        if ($id == $_SESSION['panier']['id'][$i]) {
            //verifier quantité en stock

            //    

            $prixU =  $_SESSION['panier']['prix'][$i] / $_SESSION['panier']['qte'][$i];
            $_SESSION['panier']['qte'][$i] = $qte;
            $_SESSION['panier']['prix'][$i] = $prixU * $qte;
        }
    }
}

function supprimerProduit($id)
{
    /* création d'un tableau temporaire de stockage des articles */
    $panierTemp = array("id" => array(), "nom" => array(), "qte" => array(), "couleur" => array(), "prix" => array());
    /* Comptage des articles du panier */
    $nbArticles = count($_SESSION['panier']['id']);
    /* Transfert du panier dans le panier temporaire */
    for ($i = 0; $i < $nbArticles; $i++) {
        /* On transfère tout sauf l'article à supprimer */
        if ($_SESSION['panier']['id'][$i] != $id) {
            array_push($panierTemp['id'], $_SESSION['panier']['id'][$i]);
            array_push($panierTemp['nom'], $_SESSION['panier']['nom'][$i]);
            array_push($panierTemp['qte'], $_SESSION['panier']['qte'][$i]);
            array_push($panierTemp['couleur'], $_SESSION['panier']['couleur'][$i]);
            array_push($panierTemp['prix'], $_SESSION['panier']['prix'][$i]);
        }
    }
    /* Le transfert est terminé, on ré-initialise le panier */
    $_SESSION['panier'] = $panierTemp;
    /* On peut maintenant supprimer notre panier temporaire */
    unset($panier_tmp);
}

function estPresent($id)
{
    if (in_array($id, $_SESSION['panier']['id'])) {
        return array_search($id, $_SESSION['panier']['id']);
    } else {
        return -1;
    }
}

function verifStock()
{
    return null;
}
