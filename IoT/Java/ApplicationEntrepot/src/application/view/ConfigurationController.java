package application.view;

import java.util.Optional;

import application.EntrepotApp;
import application.model.GestionJson;
import javafx.fxml.FXML;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Alert;
import javafx.scene.control.Slider;
import javafx.scene.control.TextField;
import javafx.scene.control.Alert.AlertType;
import javafx.stage.Stage;
import javafx.scene.control.CheckBox;

/**
 * Controleur de la page de configuration des données
 */
public class ConfigurationController {
    private Stage fenetre = new Stage();
    private EntrepotApp app; //application
    private GestionJson fichier; //classe de lecture et écriture du fichier de configuration

    @FXML
    private CheckBox temperature;
    @FXML
    private CheckBox co2;
    @FXML
    private CheckBox humidity;
    @FXML
    private TextField server;
    @FXML
    private TextField appID;
    @FXML
    private TextField deviceID;
    @FXML
    private Slider refresh;

    /**
     * Fonction qui permet de lier l'application
     *
     * @param app application Entrepot
     */
    public void setApp(EntrepotApp app) {
        this.app = app;
    }

    /**
     * Permet de lier la classe de lecture/écriture du fichier de configuration
     *
     * @param fichier fichier de configuration
     */
    public void setFichier(GestionJson fichier) {
        this.fichier = fichier;
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
     * Permet de pré-remplir les champs avec les données présentes dans le fichier de configuration
     */
    public void loadValues() {

        this.server.setText(this.fichier.getServer());
        this.appID.setText(this.fichier.getAppID());
        this.deviceID.setText(this.fichier.getDeviceID());
        this.refresh.setValue(this.fichier.getRefresh());

        String[] data = this.fichier.getData();
        for (String s : data) {
            if (s != null) {
                switch (s) {
                    case "temperature":
                        this.temperature.setSelected(true);
                        break;
                    case "humidity":
                        this.humidity.setSelected(true);
                        break;
                    case "co2":
                        this.co2.setSelected(true);
                        break;
                }
            }
        }

    }

    /**
     * Fonction FXML pour quitter l'application
     * Lorsque l'utilisateur veut quitter, cela ouvre une boite de dialogue pour confirmer.
     */
    @FXML
    private void actionQuitter() {
        Alert quit = new Alert(AlertType.CONFIRMATION, "", ButtonType.YES, ButtonType.NO);
        quit.initOwner(fenetre);
        quit.setTitle("Fermeture de l'application");
        quit.setHeaderText("Voulez-vous réellement quitter ?");
        Optional<ButtonType> option = quit.showAndWait();
        if (option.get().equals(ButtonType.YES)) {
            this.fenetre.close();
        }
    }

    /**
     * Fonction FXML pour confirmer la configuration
     * Lorsqu'on clique sur le bouton "Confirmer", les champs entrées sont récupérées, vérifiés, et modifiées dans le config.json, puis on lance la page suivante
     */
    @FXML
    private void actionConfirmer() {

        boolean confirmation = true;

        String serveur = this.server.getText().trim();
        String application = this.appID.getText().trim();
        String capteur = this.deviceID.getText().trim();
        int frequence = (int) this.refresh.getValue();

        if (serveur.equals("") || application.equals("") || capteur.equals("") || frequence > 10 || frequence < 1) {
            Alert alert = new Alert(Alert.AlertType.ERROR, "Veuillez entrer des valeurs ad\u00e9quates dans les champs", ButtonType.OK);
            alert.showAndWait();
            confirmation = false;
        }

        if (!this.temperature.isSelected() && !this.humidity.isSelected() && !this.co2.isSelected()) {
            Alert alert = new Alert(Alert.AlertType.ERROR, "Veuillez choisir au moins un type de données \n (température, humidité, co²)", ButtonType.OK);
            alert.showAndWait();
            confirmation = false;
        }

        if (confirmation) {

            String[] data = new String[3];
            if (this.temperature.isSelected()) {
                data[0] = "temperature";
            }
            if (this.humidity.isSelected()) {
                data[1] = "humidity";
            }
            if (this.co2.isSelected()) {
                data[2] = "co2";
            }

            //modifie toutes les infos
            this.fichier.setServer(serveur);
            this.fichier.setAppID(application);
            this.fichier.setDeviceID(capteur);
            this.fichier.setRefresh(frequence);
            this.fichier.setData(data);

            //enregistre les infos dans le fichier json
            this.fichier.writeJson();

            //appelle la seconde fenetre
            this.fenetre.setScene(this.app.showFenetreVisualisation((int) this.refresh.getValue(), this.fichier.getData()));
        }
    }
}