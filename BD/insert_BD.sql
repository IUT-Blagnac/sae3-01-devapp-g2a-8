INSERT ALL
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique1', null)
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique2', null)
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique3', null)
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique4', null)
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique5', null)
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique6', null)
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique7', null)
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique8', null)
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique9', null)
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique10', null)
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique1A', 'Electronique1')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique1B', 'Electronique1')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique2A', 'Electronique2')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique2B', 'Electronique2')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique3A', 'Electronique3')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique3B', 'Electronique3')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique4A', 'Electronique4')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique4B', 'Electronique4')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique5A', 'Electronique5')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique5B', 'Electronique5')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique6A', 'Electronique6')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique6B', 'Electronique6')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique7A', 'Electronique7')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique7B', 'Electronique7')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique8A', 'Electronique8')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique8B', 'Electronique8')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique9A', 'Electronique9')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique9B', 'Electronique9')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique10A', 'Electronique10')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('Electronique10B', 'Electronique10')
into CATEGORIE (NOM, CATEGORIEPARENTE) values ('SousElectronique10B1', 'Electronique10B')
SELECT * FROM DUAL;

INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Lambert', 'Olivier', 'olivier.lambert@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '6', 'chemin Benoît Rivière', '76507', 'Muller', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Philippe', 'Margot', 'margot.philippe@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'rue', 'Marianne Marchal', '16138', 'Paris', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Alexandre', 'Louis', 'louis.alexandre@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '16', 'avenue Gomez', '96012', 'Tanguy', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'du Lacombe', 'Alphonse', 'alphonse.du.lacombe@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'rue', 'Luc Hoareau', '49049', 'Saint Élodieboeuf', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Simon', 'Geneviève', 'genevieve.simon@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'rue', 'Marion', '99609', 'Payet-sur-Letellier', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Gay', 'Benjamin', 'benjamin.gay@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '681', 'rue Hubert', '59500', 'Lelièvre-la-Forêt', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Dupuy', 'Julie', 'julie.dupuy@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '99', 'rue de Buisson', '20667', 'Leleu', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Marie', 'Patricia', 'patricia.marie@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '52', 'chemin Cécile Chauveau', '55528', 'Lévydan', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'de la Turpin', 'Eugène', 'eugene.de.la.turpin@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '64', 'avenue de Blot', '71383', 'Tanguy-la-Forêt', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Valentin-Gaillard', 'Lorraine', 'lorraine.valentin-gaillard@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '355', 'avenue de Leclercq', '91123', 'MarionBourg', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Guilbert', 'Margot', 'margot.guilbert@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '550', 'avenue Tristan Faure', '47188', 'Saint Monique', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Pierre', 'Léon', 'leon.pierre@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '383', 'chemin Peltier', '18210', 'Potier-sur-Mer', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Rossi', 'Clémence', 'clemence.rossi@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '60', 'rue de Lacroix', '03054', 'Garcia', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Nguyen', 'Émile', 'emile.nguyen@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'rue', 'Gilles', '93879', 'Marin-sur-Tanguy', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Foucher', 'Dorothée', 'dorothee.foucher@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'boulevard', 'Camille Fouquet', '92646', 'Saint Raymond', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Lelièvre-Chevallier', 'Nathalie', 'nathalie.lelievre-chevallier@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '2', 'chemin de Guibert', '66715', 'Grosnec', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Rodrigues', 'Sébastien', 'sebastien.rodrigues@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '47', 'rue de Rolland', '24833', 'Sainte Victoire', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Becker', 'Arthur', 'arthur.becker@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '29', 'boulevard Gilles Charpentier', '59451', 'Launay', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Colas du Maillet', 'William', 'william.colas.du.maillet@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '42', 'rue Bègue', '95814', 'Evrardboeuf', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Tessier', 'François', 'francois.tessier@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '40', 'rue Aurore Berthelot', '43326', 'Masse', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Mary', 'Claude', 'claude.mary@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'chemin', 'de Breton', '68942', 'BigotBourg', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Le Caron', 'Thomas', 'thomas.le.caron@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '75', 'boulevard de Meunier', '59021', 'Saint Claudine', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Caron', 'Édouard', 'edouard.caron@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '277', 'boulevard Lopes', '46082', 'Pelletier', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Riou', 'Victor', 'victor.riou@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '3', 'avenue Pinto', '90567', 'Laurent', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Pichon', 'Yves', 'yves.pichon@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '68', 'avenue Pelletier', '90111', 'Bonneau-les-Bains', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Leroy', 'Emmanuel-Yves', 'emmanuel-yves.leroy@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '4', 'rue de Dubois', '43706', 'Sainte CécileVille', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Chauveau', 'Jeanne-Colette', 'jeanne-colette.chauveau@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '95', 'rue Victoire Boucher', '51423', 'HenryVille', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Auger', 'Julie', 'julie.auger@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '153', 'avenue Paulette Imbert', '26033', 'Gay-sur-Wagner', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Bousquet', 'Julie', 'julie.bousquet@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'boulevard', 'de Julien', '65320', 'Martins-la-Forêt', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Lemoine', 'Monique', 'monique.lemoine@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '30', 'boulevard Dupré', '85850', 'Colas-sur-Mer', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Loiseau', 'Frédéric', 'frederic.loiseau@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '5', 'avenue Descamps', '26362', 'FaivreBourg', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Couturier', 'Antoinette-Claire', 'antoinette-claire.couturier@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '72', 'boulevard de Joly', '88062', 'Lambert', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'de Devaux', 'Marthe', 'marthe.de.devaux@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'chemin', 'Chauveau', '84839', 'Roussel', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Hernandez', 'Guy', 'guy.hernandez@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '8', 'boulevard Martin', '35147', 'Delahaye', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Perrin-Richard', 'Joséphine', 'josephine.perrin-richard@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'avenue', 'Lopes', '72253', 'Sauvage-sur-Mer', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Cousin', 'Christine', 'christine.cousin@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'rue', 'Paulette Adam', '85995', 'Saint Margaretdan', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Berthelot-Jacquot', 'Gabriel', 'gabriel.berthelot-jacquot@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'rue', 'de Charles', '40282', 'Seguin', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Poirier', 'Charles', 'charles.poirier@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'boulevard', 'de Meunier', '88350', 'Barbier', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Gauthier', 'Gabrielle', 'gabrielle.gauthier@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '61', 'avenue Lombard', '28394', 'Saint Andréeboeuf', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Lemaître-Roger', 'Aimé', 'aime.lemaitre-roger@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'rue', 'de Thibault', '48376', 'Brunel', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Guibert', 'Josette', 'josette.guibert@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', 'chemin', 'Pinto', '81962', 'Fabre', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Leblanc', 'Laurent', 'laurent.leblanc@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '611', 'avenue de Robin', '79141', 'Masse-sur-Texier', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Pineau-Henry', 'Martine', 'martine.pineau-henry@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '14', 'chemin Denis Gilbert', '65278', 'BoyerVille', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Royer', 'Éric', 'eric.royer@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '600', 'boulevard Bruneau', '01755', 'Monnierboeuf', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Benoit-Schmitt', 'Laetitia', 'laetitia.benoit-schmitt@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '20', 'boulevard de Dumas', '78662', 'Diallo', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Lopez', 'Élodie', 'elodie.lopez@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '46', 'rue Thibault Gallet', '35698', 'Arnaud', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Payet de la Grenier', 'Claire', 'claire.payet.de.la.grenier@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '98', 'chemin Durand', '24498', 'Lefebvredan', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Lefèvre de Roy', 'Henri', 'henri.lefevre.de.roy@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '25', 'rue Noël Bernard', '53683', 'Chartierdan', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Lagarde', 'Noël', 'noel.lagarde@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '87', 'rue Weiss', '38807', 'Gallet', 'France', NULL);
INSERT INTO UTILISATEUR(numU, nom, prenom, mail, mdp, numRue, nomRue, codePostal, ville, pays, administrateur)
VALUES(UTILISATEUR_ID_SEQ.nextval, 'Albert-Guillet', 'Océane', 'oceane.albert-guillet@mail.com', '$2y$10$XLD.RtKUwiwrWHRCFHJYe.LDAcZK1RcZt75oroKPZTvzLx/0p/7GO', '9', 'rue Antoine Richard', '41789', 'Delahaye-la-Forêt', 'France', NULL);

INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit1', 'loh8snr2', 83.66, 0, 'Quiquia velit magnam sed porro quaerat dolorem velit.', 'Razer', 'Electronique1A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit2', 'h3v52yk8', 57.45, 0, 'Numquam etincidunt tempora ipsum voluptatem est numquam.', 'Logitech', 'Electronique8A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit3', '907kldh3', 56.82, 0, 'Consectetur non sed non sit dolor.', 'Steelseries', 'Electronique10A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit4', 'hz8pw90p', 20.73, 0, 'Sit neque aliquam dolorem porro porro etincidunt ipsum.', 'Turtle Beach', 'Electronique8A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit5', '3ml70u2b', 9.03, 0, 'Dolor magnam quiquia dolore ut etincidunt.', 'Logitech', 'Electronique1A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit6', '59j5l8pg', 5.38, 0, 'Quaerat amet voluptatem magnam.', 'Turtle Beach', 'Electronique9A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit7', '4xpam6tc', 93.57, 0, 'Voluptatem adipisci non aliquam labore consectetur.', 'Sennheiser', 'Electronique8B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit8', 'wet2sb7c', 0.63, 0, 'Velit ut voluptatem neque.', 'Turtle Beach', 'Electronique7A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit9', '2cs4a804', 47.08, 0, 'Quisquam sit sed dolor modi magnam magnam.', 'Sennheiser', 'Electronique3B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit10', '97neim2s', 96.01, 0, 'Sed eius porro est.', 'Turtle Beach', 'Electronique2B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit11', 'z8cc36jw', 33.61, 0, 'Quisquam voluptatem sit aliquam quisquam sed.', 'Logitech', 'Electronique4A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit12', '3s5g33ub', 67.06, 0, 'Neque adipisci quisquam est eius.', 'Razer', 'SousElectronique10B1');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit13', 'utjj73vf', 77.25, 0, 'Quaerat voluptatem neque amet eius porro aliquam quaerat.', 'Turtle Beach', 'Electronique7A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit14', 'tstx0042', 8.85, 0, 'Etincidunt sed velit etincidunt amet tempora adipisci dolore.', 'Steelseries', 'Electronique1B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit15', 'kt86k9qs', 33.0, 0, 'Ut amet labore dolore adipisci quiquia dolor sed.', 'Corsair', 'Electronique9B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit16', '7kfr8l94', 71.49, 0, 'Aliquam aliquam ut non.', 'AlienWare', 'Electronique6A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit17', 'i6yj1d0h', 4.88, 0, 'Eius porro velit quiquia.', 'Steelseries', 'Electronique6A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit18', 'gkntv27a', 34.92, 0, 'Eius numquam dolorem numquam voluptatem dolore voluptatem ut.', 'Steelseries', 'Electronique1B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit19', 'u36b7dej', 55.3, 0, 'Tempora voluptatem adipisci non labore ipsum.', 'Sennheiser', 'Electronique1B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit20', 'zyqcuz15', 28.66, 0, 'Dolore aliquam non dolore.', 'Sennheiser', 'Electronique5A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit21', '76z2x265', 6.33, 0, 'Etincidunt sed ipsum sed.', 'AlienWare', 'SousElectronique10B1');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit22', 'k61l97ey', 26.3, 0, 'Magnam sed quiquia quisquam non velit.', 'AlienWare', 'Electronique1B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit23', '1qqgfgrw', 82.67, 0, 'Ipsum labore etincidunt dolorem quaerat.', 'Steelseries', 'Electronique6B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit24', 'r3e05es2', 92.28, 0, 'Sed numquam eius aliquam dolore.', 'Dell', 'Electronique5B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit25', '7tus9ej8', 44.18, 0, 'Dolorem tempora dolorem magnam dolor neque voluptatem.', 'AlienWare', 'Electronique8A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit26', '32ku7d77', 82.16, 0, 'Ipsum est aliquam amet dolorem dolorem voluptatem dolorem.', 'Sennheiser', 'Electronique10A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit27', '89gbk9k1', 16.5, 0, 'Amet porro sit non ipsum quaerat adipisci.', 'Razer', 'Electronique5B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit28', 'n4dmkc4m', 67.62, 0, 'Quiquia dolor est est ipsum sed.', 'Turtle Beach', 'SousElectronique10B1');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit29', 'v56lpl38', 60.62, 0, 'Dolorem quiquia sit magnam dolore.', 'Logitech', 'Electronique3B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit30', 'c9fqtokf', 7.18, 0, 'Ipsum neque numquam ipsum modi.', 'Razer', 'Electronique10A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit31', '699r9b1e', 21.83, 0, 'Est dolore modi magnam labore dolor ut porro.', 'AlienWare', 'Electronique10A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit32', '10ec04et', 46.68, 0, 'Consectetur tempora dolor dolor ipsum voluptatem.', 'Dell', 'Electronique6B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit33', '5m0tfkto', 21.05, 0, 'Ut labore numquam dolore sed aliquam.', 'AlienWare', 'Electronique8A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit34', 'x07d5wao', 31.63, 0, 'Consectetur dolore quiquia labore.', 'Turtle Beach', 'Electronique1B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit35', 'yd18b9y8', 26.25, 0, 'Eius sed est est quiquia tempora modi labore.', 'AlienWare', 'Electronique7A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit36', '319y20zj', 36.69, 0, 'Dolor labore voluptatem modi.', 'Steelseries', 'Electronique4B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit37', 's7v4o03s', 52.54, 0, 'Porro neque est adipisci dolore.', 'Razer', 'Electronique6B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit38', '4v5d60vm', 2.94, 0, 'Modi aliquam quaerat non.', 'Sennheiser', 'SousElectronique10B1');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit39', 'cf5b7b15', 45.16, 0, 'Sit tempora quiquia adipisci quisquam.', 'Dell', 'Electronique5A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit40', 'kll7zvvq', 81.26, 0, 'Sed voluptatem magnam modi dolor dolorem labore magnam.', 'Sennheiser', 'Electronique8B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit41', '2v7552t6', 1.37, 0, 'Dolor adipisci neque ipsum voluptatem magnam.', 'AlienWare', 'Electronique8B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit42', 'zmb4ai33', 48.11, 0, 'Neque porro magnam voluptatem numquam.', 'Turtle Beach', 'Electronique9B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit43', 'b12ret72', 28.19, 0, 'Quisquam ut dolor adipisci dolor quisquam.', 'AlienWare', 'Electronique7B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit44', 'rm54j24s', 89.92, 0, 'Dolore neque eius dolore quiquia dolore quaerat numquam.', 'Logitech', 'Electronique6B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit45', 'la04qp20', 8.19, 0, 'Quaerat non dolorem dolorem labore non est.', 'Logitech', 'Electronique9A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit46', 'na954r86', 61.74, 0, 'Eius labore neque eius quaerat quaerat.', 'Corsair', 'Electronique6A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit47', 'bx3nz4md', 5.06, 0, 'Dolore tempora ut adipisci neque neque adipisci amet.', 'Razer', 'Electronique8A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit48', '50909kom', 40.24, 0, 'Neque quisquam numquam quaerat labore est magnam magnam.', 'Logitech', 'Electronique3B');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit49', '861y716b', 20.01, 0, 'Modi aliquam amet quiquia ipsum ipsum sed.', 'Razer', 'Electronique6A');
INSERT INTO PRODUIT(numP, nom, reference, prix, promo, descriptif, marque, categorie)
VALUES(PRODUIT_ID_SEQ.nextval, 'Produit50', '70lgh24s', 56.54, 0, 'Eius numquam dolor labore adipisci ut quiquia quaerat.', 'Dell', 'Electronique3B');

INSERT INTO COULEUR(nom)
VALUES('rouge');
INSERT INTO COULEUR(nom)
VALUES('bleu');
INSERT INTO COULEUR(nom)
VALUES('vert');
INSERT INTO COULEUR(nom)
VALUES('noir');
INSERT INTO COULEUR(nom)
VALUES('rose');
INSERT INTO COULEUR(nom)
VALUES('violet');
INSERT INTO COULEUR(nom)
VALUES('orange');
INSERT INTO COULEUR(nom)
VALUES('jaune');
INSERT INTO COULEUR(nom)
VALUES('blanc');

INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 405);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 413);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 389);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 395);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 408);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 409);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 415);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 374);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 418);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 395);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 388);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 416);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 380);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 370);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 403);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 380);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 391);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 404);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 395);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 402);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 378);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 416);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 383);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 378);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 402);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 396);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 407);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 408);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 418);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 405);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 373);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 404);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 399);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 414);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 401);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 372);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 371);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 389);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 391);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 371);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 399);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 413);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 396);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 396);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 376);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 384);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 386);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 390);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 408);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 377);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 410);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 406);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 408);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 405);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 392);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 397);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 409);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 418);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 399);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 412);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 408);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 376);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 391);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 417);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 410);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 410);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 407);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 379);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 414);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 391);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 375);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 411);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 372);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 376);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 387);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 387);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 411);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 393);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 371);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 378);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 372);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 385);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 416);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 394);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 376);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 389);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 410);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 414);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 392);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 415);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 395);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 371);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 408);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 371);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 398);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 392);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 390);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 387);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 373);
INSERT INTO Commande(numC, utilisateur)
VALUES(COMMANDE_ID_SEQ.nextval, 403);

INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 227, 9);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 227, 30);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 228, 95);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 228, 69);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 228, 88);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 229, 25);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 229, 1);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 230, 92);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 230, 68);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 230, 97);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 231, 5);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 231, 15);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 231, 21);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 232, 10);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 232, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 233, 1);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 233, 41);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 233, 28);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 234, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 234, 97);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 235, 69);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 235, 29);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 235, 12);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 235, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 236, 21);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 236, 13);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 236, 55);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 237, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 237, 1);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 238, 67);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 238, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 238, 17);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 239, 95);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 239, 18);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 239, 27);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 239, 61);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 240, 20);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 240, 3);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 240, 68);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 240, 100);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 241, 79);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 241, 25);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 242, 53);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 242, 21);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 243, 14);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 243, 88);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 243, 100);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 244, 8);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 244, 11);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 244, 9);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 244, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 245, 64);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 245, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 246, 44);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 246, 46);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 246, 62);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 247, 92);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 247, 29);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 247, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 247, 87);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 248, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 248, 65);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 248, 70);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 249, 70);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 249, 19);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 249, 76);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 249, 79);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 250, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 250, 66);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 250, 82);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 250, 69);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 251, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 251, 31);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 252, 32);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 252, 96);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 253, 87);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 253, 85);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 253, 18);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 254, 93);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 254, 42);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 255, 61);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 255, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 256, 70);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 256, 67);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 256, 89);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 257, 9);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 257, 56);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 258, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 258, 70);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 259, 56);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 259, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 259, 84);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 259, 72);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 260, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 260, 78);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 260, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 261, 6);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 261, 39);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 261, 6);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 262, 65);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 262, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 263, 66);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 263, 78);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 263, 29);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 263, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 264, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 264, 2);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 265, 11);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 265, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 266, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 266, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 266, 71);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 267, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 267, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 268, 20);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 268, 36);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 268, 11);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 269, 5);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 269, 62);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('vert', 269, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 269, 60);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 270, 72);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 270, 29);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 271, 51);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 271, 96);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 271, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 271, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('orange', 272, 88);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 272, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rouge', 273, 90);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 273, 27);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('noir', 274, 53);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('rose', 274, 1);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 274, 0);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('jaune', 275, 49);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 275, 75);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('violet', 276, 97);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('blanc', 276, 99);
INSERT INTO STOCK(couleur, produit, qte)
VALUES('bleu', 276, 0);

INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(520, 260, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(521, 249, 'vert', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(522, 265, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(522, 259, 'violet', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(522, 258, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(522, 242, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(522, 257, 'jaune', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(523, 274, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(524, 234, 'vert', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(524, 244, 'vert', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(525, 272, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(525, 247, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(525, 261, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(525, 231, 'noir', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(525, 271, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(526, 248, 'violet', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(526, 259, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(526, 260, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(526, 238, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(526, 272, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(527, 242, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(527, 228, 'noir', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(527, 269, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(527, 240, 'bleu', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(527, 262, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(527, 269, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(527, 263, 'violet', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(527, 261, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(527, 250, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(527, 234, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(528, 261, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(528, 264, 'jaune', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(529, 276, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(529, 272, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(530, 267, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(530, 271, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(530, 245, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(530, 266, 'blanc', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(530, 260, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(530, 238, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(530, 244, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(530, 250, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(530, 263, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(530, 249, 'jaune', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(531, 235, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(531, 249, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(531, 239, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(531, 264, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(531, 253, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(531, 254, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(531, 256, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(531, 250, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(531, 259, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(532, 268, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(532, 238, 'violet', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(532, 248, 'noir', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(533, 247, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(533, 250, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(533, 249, 'noir', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(533, 230, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(533, 247, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(533, 269, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(533, 238, 'violet', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(534, 274, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(534, 254, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(534, 251, 'blanc', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(534, 240, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(534, 269, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(534, 235, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(534, 259, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(535, 262, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(535, 246, 'bleu', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(535, 260, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(535, 238, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(535, 249, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(535, 235, 'blanc', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(535, 259, 'violet', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(535, 246, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(536, 230, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(536, 244, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(536, 271, 'violet', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(536, 271, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(537, 270, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(538, 260, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(538, 271, 'violet', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(538, 234, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(538, 263, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(538, 248, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(538, 260, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(539, 252, 'noir', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(540, 236, 'jaune', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(541, 263, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(541, 253, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(542, 244, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(542, 269, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(542, 253, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(543, 227, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(543, 247, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(543, 249, 'vert', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(543, 234, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(543, 231, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(544, 275, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(544, 232, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(544, 250, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(544, 258, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(544, 251, 'blanc', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(544, 269, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(544, 257, 'jaune', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(544, 242, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(544, 262, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(544, 263, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(545, 246, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(546, 235, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(546, 229, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(546, 269, 'bleu', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(546, 238, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(546, 233, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(546, 236, 'blanc', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(546, 261, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(546, 275, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(546, 276, 'blanc', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(547, 271, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(547, 235, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(548, 237, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(548, 274, 'noir', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(548, 266, 'blanc', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(548, 262, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(548, 250, 'bleu', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(548, 276, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(548, 256, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(548, 230, 'bleu', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(549, 243, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(549, 234, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(549, 244, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(549, 228, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(550, 263, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(551, 233, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(551, 264, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(551, 274, 'noir', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(551, 273, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(551, 270, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(551, 273, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(551, 228, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(552, 268, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(553, 267, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(553, 246, 'blanc', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(553, 242, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(553, 259, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(553, 264, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(553, 239, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(553, 265, 'violet', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(553, 260, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(553, 252, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(553, 258, 'violet', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(554, 274, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(554, 268, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(554, 244, 'blanc', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(554, 263, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(554, 233, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(554, 248, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(554, 268, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(554, 272, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(554, 238, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(554, 228, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(555, 237, 'violet', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(555, 264, 'jaune', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(555, 274, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(555, 270, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(555, 240, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(555, 231, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(555, 256, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(556, 241, 'noir', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(556, 256, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(556, 243, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(556, 256, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(556, 269, 'bleu', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(556, 270, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(556, 248, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(557, 253, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(557, 237, 'violet', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(558, 243, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(558, 260, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(558, 236, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(558, 231, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(558, 232, 'violet', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(558, 241, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(558, 249, 'vert', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(558, 255, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(559, 265, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(559, 263, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(559, 242, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(559, 249, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(560, 247, 'blanc', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(560, 268, 'vert', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(560, 248, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(560, 275, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(560, 253, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(560, 272, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(560, 245, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(560, 259, 'blanc', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(560, 274, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(561, 256, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(562, 246, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(562, 257, 'jaune', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(562, 274, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(562, 231, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(562, 240, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(562, 231, 'noir', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(562, 235, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(562, 273, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(562, 233, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(562, 243, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(563, 276, 'blanc', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(563, 247, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(563, 261, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(563, 243, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(563, 249, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(563, 236, 'blanc', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(563, 266, 'jaune', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(563, 266, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(564, 236, 'blanc', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(564, 230, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(564, 268, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(564, 245, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(565, 244, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(565, 268, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(566, 233, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(566, 269, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(566, 243, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(566, 268, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(566, 271, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(566, 246, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(566, 259, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(566, 235, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(566, 244, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(566, 255, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(567, 273, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(568, 253, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(568, 268, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(569, 228, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(569, 267, 'noir', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(569, 260, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(569, 249, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(569, 227, 'blanc', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(569, 273, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(569, 243, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(569, 236, 'jaune', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(569, 250, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(569, 231, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(570, 229, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(570, 244, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(571, 272, 'noir', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(571, 260, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(571, 236, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(571, 268, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(571, 239, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(571, 259, 'violet', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(571, 270, 'jaune', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(572, 259, 'violet', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(572, 238, 'vert', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(572, 243, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(572, 269, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(572, 234, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(572, 261, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(572, 246, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(573, 269, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(573, 242, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(573, 266, 'jaune', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(573, 256, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(574, 263, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(574, 241, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(574, 235, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(574, 245, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(574, 246, 'blanc', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(574, 236, 'jaune', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(574, 248, 'noir', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(574, 274, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(574, 228, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(575, 261, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(575, 250, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(575, 239, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(575, 263, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(575, 253, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(576, 252, 'violet', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(576, 247, 'blanc', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(576, 267, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(576, 268, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(576, 256, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(576, 260, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(576, 270, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(576, 274, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(576, 276, 'blanc', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(577, 253, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(577, 259, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(577, 260, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(577, 262, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(577, 272, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(577, 246, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(578, 233, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(579, 257, 'jaune', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(580, 240, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(580, 227, 'blanc', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(580, 261, 'jaune', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(580, 241, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(580, 231, 'noir', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(581, 229, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(581, 243, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(581, 259, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(581, 231, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(582, 237, 'violet', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(582, 253, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(582, 238, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(582, 227, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(582, 259, 'blanc', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(582, 230, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(583, 264, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(583, 234, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(583, 252, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(583, 260, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(583, 241, 'noir', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(583, 273, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(583, 247, 'violet', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(583, 235, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(584, 263, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(584, 269, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(584, 227, 'violet', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(584, 266, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(584, 261, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(584, 230, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(584, 239, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(585, 259, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(585, 265, 'bleu', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(585, 270, 'jaune', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(585, 269, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(585, 261, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(586, 248, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(586, 238, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(586, 239, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(586, 228, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(586, 260, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(586, 253, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(586, 238, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(587, 246, 'bleu', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(587, 235, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(587, 239, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(587, 276, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(587, 237, 'violet', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(587, 274, 'jaune', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(588, 253, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(589, 247, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(589, 250, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(589, 248, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(589, 253, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(589, 263, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(589, 242, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(590, 260, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(590, 245, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(590, 228, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(590, 249, 'jaune', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(591, 232, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(591, 236, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(591, 246, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(591, 242, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(591, 255, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(591, 253, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(591, 244, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(591, 247, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(591, 235, 'blanc', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(591, 235, 'noir', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(592, 275, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(592, 265, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(592, 265, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(592, 240, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(592, 253, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(592, 276, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(592, 250, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(592, 229, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(592, 256, 'vert', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(593, 245, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(593, 261, 'jaune', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(593, 240, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(593, 246, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(593, 271, 'violet', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(594, 263, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(594, 267, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(594, 242, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(594, 239, 'jaune', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(594, 261, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(594, 235, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(594, 249, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(594, 247, 'violet', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(595, 253, 'rose', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(595, 265, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(595, 236, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(595, 273, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(595, 270, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(596, 260, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(596, 263, 'violet', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(596, 269, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(596, 261, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(596, 265, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(596, 230, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(597, 266, 'blanc', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(597, 248, 'noir', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(597, 241, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(598, 236, 'blanc', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(598, 250, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(598, 252, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(599, 237, 'violet', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(599, 269, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(599, 228, 'jaune', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(599, 238, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(599, 275, 'jaune', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(599, 268, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(599, 268, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(599, 271, 'violet', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(600, 254, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(600, 242, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(600, 258, 'violet', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(600, 269, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(600, 245, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(600, 262, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(600, 231, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(600, 272, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(601, 234, 'blanc', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(601, 264, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(601, 276, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(601, 261, 'noir', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(601, 260, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(601, 269, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(601, 274, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(602, 251, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(602, 263, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(602, 266, 'jaune', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(602, 247, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(602, 274, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(602, 232, 'violet', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(602, 254, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(602, 240, 'noir', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(603, 247, 'violet', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(603, 236, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(603, 269, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(603, 233, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(603, 259, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(603, 241, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(603, 227, 'blanc', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(604, 239, 'jaune', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(604, 227, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(605, 243, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(605, 250, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(605, 262, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(605, 243, 'jaune', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(605, 238, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(605, 230, 'rouge', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(605, 264, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(605, 256, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(606, 268, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(606, 234, 'blanc', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(606, 244, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(606, 275, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(606, 258, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(607, 250, 'bleu', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(607, 255, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(607, 260, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(607, 228, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(607, 235, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(607, 240, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(607, 237, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(607, 233, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(607, 259, 'blanc', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(608, 266, 'jaune', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(608, 244, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(608, 247, 'blanc', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(608, 251, 'blanc', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(608, 245, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(609, 230, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(609, 245, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(609, 234, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(609, 250, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(609, 266, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(609, 253, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(609, 242, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(609, 239, 'jaune', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(609, 228, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(609, 248, 'noir', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(610, 240, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(610, 267, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(610, 256, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(610, 269, 'orange', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(610, 245, 'orange', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(611, 232, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(611, 250, 'vert', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(611, 262, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(611, 229, 'rose', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(611, 229, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(611, 234, 'vert', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(611, 235, 'blanc', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(611, 239, 'bleu', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(612, 247, 'orange', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(612, 247, 'rose', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(612, 268, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(613, 258, 'violet', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(613, 248, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(613, 274, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(614, 250, 'vert', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(614, 270, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(615, 269, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(615, 268, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(615, 235, 'rose', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(615, 230, 'bleu', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(615, 255, 'rose', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(615, 240, 'orange', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(615, 240, 'jaune', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(616, 241, 'bleu', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(616, 264, 'jaune', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(616, 246, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(616, 255, 'vert', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(616, 236, 'rouge', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(616, 250, 'vert', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(616, 265, 'bleu', 5);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(617, 239, 'rouge', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(617, 254, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(618, 254, 'rouge', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(618, 250, 'orange', 3);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(618, 227, 'violet', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(619, 275, 'bleu', 2);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(619, 231, 'noir', 1);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(619, 260, 'rouge', 4);
INSERT INTO DETAILCOMMANDE(commande, produit, couleur, qte)
VALUES(619, 271, 'orange', 3);