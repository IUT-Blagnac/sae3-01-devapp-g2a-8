package application.view;

import application.EntrepotApp;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

import java.util.Optional;

public class VisualisationController {

    private Stage fenetre=new Stage();
    private EntrepotApp app;

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
     * @param fenetre : fenetre principale
     */
    public void setFenetrePrincipale(Stage fenetre) {
        this.fenetre=fenetre;
        this.fenetre.setOnCloseRequest(e -> {
            e.consume();
            actionQuitter();
        } );
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
            this.fenetre.close();
        }
    }

}
