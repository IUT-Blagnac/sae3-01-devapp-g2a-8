DROP TABLE Stock;
DROP TABLE DetailCommande;
DROP TABLE Couleur;
DROP TABLE Commande;
DROP TABLE Produit;
DROP TABLE Categorie;
DROP TABLE Utilisateur;

CREATE TABLE Utilisateur (
    numU DECIMAL(10),
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    mail VARCHAR(60) NOT NULL,
    mdp VARCHAR(255) NOT NULL,
    nomRue VARCHAR(50),
    numRue VARCHAR(30),
    codePostal VARCHAR(10),
    ville VARCHAR(30),
    pays VARCHAR(30),
    administrateur VARCHAR(5), -- ADMIN TO ADMINISTRATEUR
    CONSTRAINT pk_utilisateur PRIMARY KEY(numU),
    CONSTRAINT ck_admin_utilisateur CHECK(administrateur IS NULL OR administrateur='Admin')
);

CREATE TABLE Categorie (
    nom VARCHAR(50),
    categorieParente VARCHAR(50),
    CONSTRAINT pk_categorie PRIMARY KEY(nom),
    CONSTRAINT fk_categorie_categorieparente FOREIGN KEY(categorieParente) REFERENCES Categorie(nom)
);

CREATE TABLE Produit (
    numP DECIMAL(10),
    nom VARCHAR(50) NOT NULL,
    reference VARCHAR(30) NOT NULL, -- REF TO REFERENCE 
    prix DECIMAL(10,2) NOT NULL,
    promo DECIMAL (3,2) DEFAULT 0,
    descriptif VARCHAR(255), -- DESCRIPTION TO DESCRIPTIF
    marque VARCHAR(50) NOT NULL,
    categorie VARCHAR(50),
    CONSTRAINT pk_produit PRIMARY KEY(numP),
    CONSTRAINT fk_produit_categorie FOREIGN KEY(categorie) REFERENCES Categorie(nom)
);

CREATE TABLE Commande (
    numC DECIMAL(10),
    montant DECIMAL(10,2),
    dateC DATE, -- DATE TO DATEC
    utilisateur DECIMAL(10),
    CONSTRAINT pk_commande PRIMARY KEY(numC),
    CONSTRAINT fk_commande_utilisateur FOREIGN KEY(utilisateur) REFERENCES Utilisateur(numU)
);

CREATE TABLE Couleur (
    nom VARCHAR(30),
    CONSTRAINT pk_couleur PRIMARY KEY(nom)
);

CREATE TABLE DetailCommande (
    commande DECIMAL(10),
    produit DECIMAL(10),
    couleur VARCHAR(30),
    qte DECIMAL NOT NULL,
    CONSTRAINT pk_detailcommande PRIMARY KEY(commande, produit, couleur),
    CONSTRAINT fk_detailcommande_commande FOREIGN KEY(commande) REFERENCES Commande(numC),
    CONSTRAINT fk_detailcommande_produit FOREIGN KEY(produit) REFERENCES Produit(numP),
    CONSTRAINT fk_detailcommande_couleur FOREIGN KEY(couleur) REFERENCES Couleur(nom)
);

CREATE TABLE Stock (
    couleur VARCHAR(30),
    produit DECIMAL(10),
    qte DECIMAL NOT NULL,
    CONSTRAINT pk_stock PRIMARY KEY(couleur, produit),
    CONSTRAINT fk_stock_couleur FOREIGN KEY(couleur) REFERENCES Couleur(nom),
    CONSTRAINT fk_stock_produit FOREIGN KEY(produit) REFERENCES Produit(numP)
);

CREATE SEQUENCE utilisateur_id_seq;
CREATE SEQUENCE produit_id_seq;
CREATE SEQUENCE commande_id_seq;