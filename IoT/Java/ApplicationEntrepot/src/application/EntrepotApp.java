package application;

import application.view.VisualisationController;
import application.model.GestionJson;
import application.view.ConfigurationController;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;

import java.io.IOException;


public class EntrepotApp extends Application {
    
	private Stage primaryStage;  //fenetre principale
	
	/** Fonction de lancement de l'application <BR>
	 * 
	 * Cette méthode est appelée lors du démarrage de l'application. <BR>
	 * Elle permet d'appeler la méthode qui lance la page de configuration.
	 * 
	 */
	@Override
	public void start(Stage primaryStage) throws Exception { 
		this.primaryStage=primaryStage;
		this.primaryStage.setScene(showFenetreConfiguration());
		this.primaryStage.setTitle("Entrepot App");
		this.primaryStage.show();
	}


	public Scene showFenetreConfiguration() {
		try {
			FXMLLoader loader=new FXMLLoader();
			loader.setLocation(EntrepotApp.class.getResource("view/Configuration.fxml"));
			
			GridPane root=loader.load();
			
			ConfigurationController ctrl=loader.getController();
			ctrl.setFichier(new GestionJson());
			ctrl.loadValues();
			ctrl.setApp(this);
			ctrl.setFenetrePrincipale(primaryStage);
			
			return new Scene (root);
						
		} catch (IOException e) {
			System.out.println("Ressource FXML non disponible : Configuration");
			e.printStackTrace();
			System.exit(1);
		}
		return null;	
	}

	public Scene showFenetreVisualisation() {
		try {
			FXMLLoader loader=new FXMLLoader();
			loader.setLocation(EntrepotApp.class.getResource("view/Visualisation.fxml"));

			GridPane root=loader.load();

			VisualisationController ctrl=loader.getController();
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
	
	public static void main(String[] args) {
		launch(args);
	}
   
}