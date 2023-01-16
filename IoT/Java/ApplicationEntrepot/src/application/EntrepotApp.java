package application;

import application.model.GestionDonnees;
import application.view.VisualisationController;
import application.model.GestionJson;
import application.view.ConfigurationController;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;

import java.io.IOException;

/**
 * Classe principale qui permet de lancer l'application et la première page
 */
public class EntrepotApp extends Application {

    private Stage primaryStage;  //fenetre principale

    /**
     * Fonction de lancement de l'application
     * Cette méthode est appelée lors du démarrage de l'application.
     * Elle permet d'appeler la méthode qui lance la page de configuration.
     *
     * @param primaryStage la fenêtre principale de l'application
     */
    @Override
    public void start(Stage primaryStage) {
        this.primaryStage = primaryStage;
        this.primaryStage.setScene(showFenetreConfiguration());
        this.primaryStage.setTitle("Entrepot App");
        this.primaryStage.show();
    }

    /**
     * Lance la page de configuration des données
     *
     * @return l'affichage de la fenetre de configuration
     */
    public Scene showFenetreConfiguration() {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(EntrepotApp.class.getResource("view/Configuration.fxml"));

            GridPane root = loader.load();

            ConfigurationController ctrl = loader.getController();
            ctrl.setFichier(new GestionJson());
            ctrl.loadValues();
            ctrl.setApp(this);
            ctrl.setFenetrePrincipale(primaryStage);

            return new Scene(root);

        } catch (IOException e) {
            System.out.println("Ressource FXML non disponible : Configuration");
            e.printStackTrace();
            System.exit(1);
        }
        return null;
    }

    /**
     * Lance la page de visualisation des données
     *
     * @param refresh taux de rafraichissement des données
     * @param choix   tableau contenant les données demandées par l'utilisateur (température, humidité ou CO2)
     * @return l'affichage de la fenetre de visusalisation
     */
    public Scene showFenetreVisualisation(int refresh, String[] choix) {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(EntrepotApp.class.getResource("view/Visualisation.fxml"));

            GridPane root = loader.load();

            VisualisationController ctrl = loader.getController();
            ctrl.setData(new GestionDonnees(choix));
            ctrl.setTimer(refresh);
            ctrl.setApp(this);
            ctrl.setFenetrePrincipale(primaryStage);
            return new Scene(root);

        } catch (IOException e) {
            System.out.println("Ressource FXML non disponible : Visualisation");
            e.printStackTrace();
            System.exit(1);
        }
        return null;
    }

    /**
     * Lance l'application
     *
     * @param args arguments
     */
    public static void main(String[] args) {
        launch(args);
    }

}