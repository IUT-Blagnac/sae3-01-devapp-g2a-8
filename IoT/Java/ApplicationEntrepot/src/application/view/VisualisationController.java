package application.view;

import application.EntrepotApp;
import application.model.GestionDonnees;
import application.thread.TaskBackground;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

import java.util.Optional;
import java.util.Timer;

public class VisualisationController {

    private int refresh;
    private Stage fenetre=new Stage();
    private EntrepotApp app;
    // Thread
    private TaskBackground background;
    private Timer timer;

    private GestionDonnees data;

    @FXML
    private TextField temperature;
    @FXML
    private TextField humidity;
    @FXML
    private TextField co2;

    public void setApp(EntrepotApp app) {
        this.app=app;
    }

    /** Fonction pour lier la fenêtre principale <BR>
     *
     * Cette fonction permet de lier la fenêtre ainsi que de définir une actionQuitter lorsque l'utilisateur clique sur la croix. <BR>
     *
     * @param fenetre : fenetre principale     */
    public void setFenetrePrincipale(Stage fenetre) {
        this.fenetre=fenetre;
        this.fenetre.setOnCloseRequest(e -> {
            e.consume();
            actionQuitter();
        } );
    }

    public void setTimer(int refresh){
        this.background = new TaskBackground(this, this.data);
        this.timer=new Timer();
        this.timer.scheduleAtFixedRate(this.background, 60000, refresh*60000);
    }

    public void setData(GestionDonnees data){
        this.data=data;
        loadValues();
    }

    public void loadValues(){
        this.temperature.setText(this.data.getLastTemperature());
        this.humidity.setText(this.data.getLastHumidity());
        this.co2.setText(this.data.getLastCO2());
    }

    /** Fonction FXML pour quitter l'application <BR>
     *
     *  Lorsque l'utilisateur veut quitter, cela ouvre une boite de dialogue pour confirmer. <BR>
     *
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
