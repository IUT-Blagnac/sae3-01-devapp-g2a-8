package application;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;
import application.model.GestionJson;
import application.view.ConfigurationController;

import java.io.IOException;


public class EntrepotApp extends Application {
    
	private Stage primaryStage;  //fenetre principale
	
	/** Fonction de lancement de l'application <BR>
	 * 
	 * Cette méthode est appelée lors du démarrage de l'application. <BR>
	 * Elle permet d'appeler la méthode qui lance la page d'accueil.
	 * 
	 */
	@Override
	public void start(Stage primaryStage) throws Exception { 
		this.primaryStage=primaryStage;
		
		
		primaryStage.setScene(showFenetreConfiguration());
		primaryStage.setTitle("Entrepot App");
		primaryStage.show();
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
	
	public static void main(String[] args) {
		launch(args);
	}
   
}