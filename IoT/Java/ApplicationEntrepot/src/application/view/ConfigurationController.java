package application.view;

import java.util.Optional;

import application.EntrepotApp;
import application.model.GestionJson;
import javafx.fxml.FXML;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Slider;
import javafx.scene.control.TextField;
import javafx.scene.control.Alert.AlertType;
import javafx.stage.Stage;
import javafx.scene.control.CheckBox;

public class ConfigurationController
{
	private Stage fenetre=new Stage();
	private EntrepotApp app;
	private GestionJson fichier;

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
	@FXML
	private Button submit;

	/** Fonction qui permet de lier l'application <BR>
	 * 
	 * @param app : application Entrepot
	 */
	public void setApp(EntrepotApp app) {
		this.app=app;
	}
	
	public void setFichier(GestionJson fichier) {
		this.fichier=fichier;
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
	
	public void loadValues() {
		
        this.server.setText(this.fichier.getServer());
        this.appID.setText(this.fichier.getAppID());
        this.deviceID.setText(this.fichier.getDeviceID());
        this.refresh.setValue(this.fichier.getRefresh());
        
        String[] data = this.fichier.getData();
        for (String s : data) {
        	if (s!=null) {
	            if (s.equals("temperature")) {
	                this.temperature.setSelected(true);
	            } else if (s.equals("humidity")) {
	            	this.humidity.setSelected(true);
	            } else if (s.equals("co2")) {
	            	this.co2.setSelected(true);
	            }
        	}
        }

    }

	/** Fonction FXML pour quitter l'application <BR>
	 *  
	 *  Lorsque l'utilisateur veut quitter, cela ouvre une boite de dialogue pour confirmer. <BR>
	 *  
	 */
	@FXML
	private void actionQuitter() {
		Alert quit = new Alert(AlertType.CONFIRMATION, "", ButtonType.YES, ButtonType.NO);
		quit.initOwner(fenetre);
		quit.setTitle("Fermeture de l'application");
		quit.setHeaderText("Voulez-vous réellement quitter ?");
		Optional <ButtonType> option = quit.showAndWait();
		if (option.get().equals(ButtonType.YES)) {
			this.fenetre.close();
		}
	}

	@FXML
	private void actionConfirmer() {

		boolean confirmation = true;

		String serveur = this.server.getText().trim();
		String application = this.appID.getText().trim();
		String capteur = this.deviceID.getText().trim();
		int frequence = (int)this.refresh.getValue();

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
			this.fenetre.setScene(this.app.showFenetreVisualisation());
		}
	}
}