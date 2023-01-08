package application.view;

import java.io.FileReader;
import java.io.IOException;
import java.io.FileNotFoundException;
import java.io.FileWriter;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import javafx.fxml.FXML;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Slider;
import javafx.scene.control.TextField;
import javafx.scene.control.CheckBox;

public class ConfigurationController
{
    @FXML
    public CheckBox temperature;
    @FXML
    public CheckBox co2;
    @FXML
    public CheckBox humidity;
    @FXML
    public TextField server;
    @FXML
    public TextField appID;
    @FXML
    public TextField deviceID;
    @FXML
    public Slider refresh;
    @FXML
    private Button submit;
    
    @FXML
    private void newValues() {
    	
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
        
        if (confirmation) {
            try (FileReader reader = new FileReader("config.json")) {
            	
            	JSONParser jsonParser = new JSONParser();
                JSONObject config = (JSONObject) jsonParser.parse(reader);
                
                config.put("server", serveur);
                config.put("appID", application);
                config.put("deviceID", capteur);
                config.put("refresh", frequence);
                
                JSONArray checkBoxes = new JSONArray();
                
                if (temperature.isSelected()) {
                    checkBoxes.add("temperature");
                }
                if (humidity.isSelected()) {
                    checkBoxes.add("humidity");

                }
                if (co2.isSelected()) {
                    checkBoxes.add("co2");

                }
          
                config.put("data", checkBoxes);
                
                FileWriter file = new FileWriter("config.json");
                try {
                    file.write(config.toJSONString());

                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    file.flush();
                    file.close();
                }
            } catch (FileNotFoundException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
        }
        
    }
}