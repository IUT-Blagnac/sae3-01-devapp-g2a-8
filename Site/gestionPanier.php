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
        $_SESSION['panier']['promo'] = array();
        $_SESSION['panier']['prixPromo'] = array();
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
        $_SESSION['panier']['promo'] = array();
        $_SESSION['panier']['prixPromo'] = array();
    }

    require('include/connect.inc.php');
    # récupération du produit
    $reqProduit = 'SELECT NOM, PRIX, PROMO FROM PRODUIT WHERE NUMP=:pNumP';
    $st = oci_parse($conn, $reqProduit);
    oci_bind_by_name($st, ":pNumP", $idProduit);
    oci_execute($st);
    $produit = oci_fetch_assoc($st);
    oci_free_statement($st);
    oci_close($conn);

    $nomP = $produit['NOM'];
    $prixP = $produit['PRIX'];
    $promoP = floatval($produit['PROMO']);

    $indexeP = estPresent($idProduit, $couleur); // -1 si pas présent
    $qte = intval($qte);

    if ($indexeP != -1) { // si le produit est déjà dans le panier
        $nouvQte = $qte + intval($_SESSION['panier']['qte'][$indexeP]);
        try {
            modifierQuantite($idProduit, $nouvQte, $couleur);
        } catch (Exception $e) {
            throw $e;
        }
    } else { // si le produit n'est pas dans le panier
        array_push($_SESSION['panier']['id'], $idProduit);
        array_push($_SESSION['panier']['nom'], $nomP);
        array_push($_SESSION['panier']['couleur'], $couleur);
        array_push($_SESSION['panier']['qte'], $qte);
        array_push($_SESSION['panier']['prix'], $prixP * $qte);
        array_push($_SESSION['panier']['promo'], $promoP);
        array_push($_SESSION['panier']['prixPromo'], ($prixP-($prixP*$promoP)) * $qte);
    }    
}

function recupererProduits()
{
    if (session_status() != PHP_SESSION_ACTIVE) {
        session_start();
    }

    return $_SESSION['panier'];
}

function modifierQuantite($id, $qte, $couleur)
{
    //test stock
    $enStock = verifStock($id, $couleur, $qte);

    if (!$enStock) { // si le stock n'est pas suffisant
        throw new Exception('Pas assez de stock pour cet article');
    }

    $index = estPresent($id, $couleur);

    $prixU =  $_SESSION['panier']['prix'][$index] / $_SESSION['panier']['qte'][$index];
    $_SESSION['panier']['qte'][$index] = $qte;
    $_SESSION['panier']['prix'][$index] = $prixU * $qte;
    $_SESSION['panier']['prixPromo'][$index] = ($prixU-($prixU*$_SESSION['panier']['promo'][$index])) * $qte;
}

function supprimerProduit($id, $couleur)
{
    /* création d'un tableau temporaire de stockage des articles */
    $panierTemp = array("id" => array(), "nom" => array(), "qte" => array(), "couleur" => array(), "prix" => array(), "promo" => array(), "prixPromo" => array());

    $nbArticles = count($_SESSION['panier']['id']);
    /* Transfert du panier dans le panier temporaire */
    for ($i = 0; $i < $nbArticles; $i++) {
        /* On transfère tout sauf l'article à supprimer */
        if (!($_SESSION['panier']['id'][$i] == $id && $_SESSION['panier']['couleur'][$i] == $couleur)) {
            array_push($panierTemp['id'], $_SESSION['panier']['id'][$i]);
            array_push($panierTemp['nom'], $_SESSION['panier']['nom'][$i]);
            array_push($panierTemp['qte'], $_SESSION['panier']['qte'][$i]);
            array_push($panierTemp['couleur'], $_SESSION['panier']['couleur'][$i]);
            array_push($panierTemp['prix'], $_SESSION['panier']['prix'][$i]);
            array_push($panierTemp['promo'], $_SESSION['panier']['promo'][$i]);
            array_push($panierTemp['prixPromo'], $_SESSION['panier']['prixPromo'][$i]);
        }
    }
    $_SESSION['panier'] = $panierTemp;
    unset($panier_tmp);
}

function estPresent($id, $couleur)
{   
    $nbArticles=count($_SESSION['panier']['id']);
    for ($i = 0; $i < $nbArticles; $i++) {
        if ($_SESSION['panier']['id'][$i] == $id && $_SESSION['panier']['couleur'][$i] == $couleur) {
            return $i;
        }
    }
    return -1;
}

function verifStock($id, $couleur, $qte)
{
    require('include/connect.inc.php');

    $req = " begin :retour := VERIFICATIONSTOCK(:pNump, :pCouleur, :pQte); end; ";
    $st = oci_parse($conn, $req);
    oci_bind_by_name($st, ":retour", $retour, 40);
    oci_bind_by_name($st, ":pNumP", $id);
    oci_bind_by_name($st, ":pCouleur", $couleur);
    oci_bind_by_name($st, ":pQte", $qte);
    oci_execute($st);
    oci_free_statement($st);
    oci_close($conn);

    return $retour;
}
