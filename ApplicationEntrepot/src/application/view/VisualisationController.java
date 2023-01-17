package application.view;

import application.EntrepotApp;
import application.model.GestionDonnees;
import application.thread.TaskBackground;

import javafx.fxml.FXML;
import javafx.scene.chart.AreaChart;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.XYChart;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.stage.Stage;

import java.util.Optional;
import java.util.Timer;

/**
 * Controleur de la page de visualisation des données
 */
public class VisualisationController {

    private Stage fenetre = new Stage();
    private EntrepotApp app; //application
    private TaskBackground background;// Thread
    private Timer timer;
    private GestionDonnees data; //classe de lecture des données
    private XYChart.Series tempSeries = new XYChart.Series(); //série de température
    private XYChart.Series humSeries = new XYChart.Series(); //série d'humidité
    private XYChart.Series coSeries = new XYChart.Series(); //série de CO2

    @FXML
    private Label tempLabel; //label temperature
    @FXML
    private Label humLabel; //label humidité
    @FXML
    private Label coLabel; //label CO2
    @FXML
    private Label temperature; //champ température (contenant la dernière valeur)
    @FXML
    private Label humidity; //champ humidité
    @FXML
    private Label co2; //champ CO2
    @FXML
    private AreaChart tempChart; //graphique température
    @FXML
    private LineChart humChart; //graphique humidité
    @FXML
    private BarChart coChart; //graphique CO2

    /**
     * Lie l'application
     *
     * @param app la classe d'application
     */
    public void setApp(EntrepotApp app) {
        this.app = app;
    }

    /**
     * Fonction pour lier la fenêtre principale
     * Cette fonction permet de lier la fenêtre ainsi que de définir une actionQuitter lorsque l'utilisateur clique sur la croix.
     *
     * @param fenetre fenetre principale
     */
    public void setFenetrePrincipale(Stage fenetre) {
        this.fenetre = fenetre;
        this.fenetre.setOnCloseRequest(e -> {
            e.consume();
            actionQuitter();
        });
    }

    /**
     * Définit un timer avec une tâche qui se répétera selon le taux de rafraichissement voulu
     *
     * @param refresh taux de rafraichissemnt des données
     */
    public void setTimer(int refresh) {
        this.background = new TaskBackground(this, this.data);
        this.timer = new Timer();
        this.timer.scheduleAtFixedRate(this.background, refresh * 60000, refresh * 60000); //on met le taux en millisecondes
    }

    /**
     * Récupère les données et rend visibles les champs correspondant aux types de données voulues (température, humidité ou CO2)
     *
     * @param data classe qui gère la lecture des données
     */
    public void setData(GestionDonnees data) {
        this.data = data;
        this.tempChart.getData().add(tempSeries);
        this.humChart.getData().add(humSeries);
        this.coChart.getData().add(coSeries);
        if (this.data.getTemperature() == null) {
            this.tempLabel.setVisible(false);
            this.temperature.setVisible(false);
            this.tempChart.setVisible(false);
        }
        if (this.data.getHumidity() == null) {
            this.humLabel.setVisible(false);
            this.humidity.setVisible(false);
            this.humChart.setVisible(false);
        }
        if (this.data.getCo2() == null) {
            this.coLabel.setVisible(false);
            this.co2.setVisible(false);
            this.coChart.setVisible(false);
        }
        loadValues();
    }

    /**
     * Permet le rafraichissement de l'interface
     */
    public void loadValues() {
        if (!this.data.getLastTemperature().equals("")) {
            this.temperature.setText(this.data.getLastTemperature()+" °C");
        }
        if (!this.data.getLastHumidity().equals("")) {
            this.humidity.setText(this.data.getLastHumidity()+" %");
        }
        if (!this.data.getLastCO2().equals("")) {
            this.co2.setText(this.data.getLastCO2()+" ppm");
        }

        loadTemperature(this.data.getTemperature());
        loadHumidity(this.data.getHumidity());
        loadC02(this.data.getCo2());
    }

    /**
     * Permet de récupérer les températures et de les ajouter au graphique
     *
     * @param temp le tableau des températures récupérées
     */
    private void loadTemperature(String[] temp) {
        if (temp != null && !temp[0].equals("")) {
            int debut = this.tempSeries.getData().size();
            int size = temp.length;
            for (int i = debut; i < size; i++) {
                this.tempSeries.getData().add(new XYChart.Data<>("" + i, Double.parseDouble(temp[i])));
            }
        }
    }

    private void loadHumidity(String[] hum) {
        if (hum != null && !hum[0].equals("")) {
            int debut = this.humSeries.getData().size();
            int size = hum.length;
            for (int i = debut; i < size; i++) {
                this.humSeries.getData().add(new XYChart.Data<>("" + i, Double.parseDouble(hum[i])));
            }
        }
    }

    private void loadC02(String[] co2) {
        if (co2 != null && !co2[0].equals("")) {
            int debut = this.coSeries.getData().size();
            int size = co2.length;
            for (int i = debut; i < size; i++) {
                this.coSeries.getData().add(new XYChart.Data<>("" + i, Double.parseDouble(co2[i])));
            }
        }
    }

    /**
     * Fonction FXML pour quitter l'application
     * Lorsque l'utilisateur veut quitter, cela ouvre une boite de dialogue pour confirmer.
     */
    @FXML
    private void actionQuitter() {
        Alert quit = new Alert(Alert.AlertType.CONFIRMATION, "", ButtonType.YES, ButtonType.NO);
        quit.initOwner(fenetre);
        quit.setTitle("Fermeture de l'application");
        quit.setHeaderText("Voulez-vous réellement quitter ?");
        Optional<ButtonType> option = quit.showAndWait();
        if (option.get().equals(ButtonType.YES)) {
            this.timer.cancel();
            this.fenetre.close();
        }
    }

}
