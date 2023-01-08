package application;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import application.view.ConfigurationController;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;


public class EntrepotApp extends Application {
    public static ConfigurationController configurationController;


    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(EntrepotApp.class.getResource("view/Configuration.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle("Configuration");
        stage.setScene(scene);
        stage.show();


        configurationController = fxmlLoader.getController();
        loadValues(configurationController);


    }

    public static void main(String[] args) {
        launch();
    }

    /** Cette fonction prend le fichier config.json, le lit, et si elle le trouve pas elle cree un nouveaux, puis retourne les donnes.
     * @return JSONObject qui correspond a des donnes dans le fichier config
     * @throws IOException
     */    
    public JSONObject readJson() throws IOException {
        //JSONParser pour lire le json et lui admettre des donnees
        JSONParser jsonParser = new JSONParser();

        try (FileReader reader = new FileReader("config.json")) {
            //Si le fichier existe, on le lit
            Object obj = jsonParser.parse(reader);
            JSONObject config = new JSONObject();
            config = (JSONObject) obj;
            reader.close();
            return (config);

        } catch (FileNotFoundException e) {
            //Sinon, on le cree
            JSONObject newConfig = new JSONObject();
            newConfig.put("server","chirpstack.iut-blagnac.fr");
            newConfig.put("appID","1");
            newConfig.put("deviceID","+");
            newConfig.put("refresh", 1);

            JSONArray newCheckBoxes = new JSONArray();
            newCheckBoxes.add("temperature");
            newCheckBoxes.add("humidity");
            newCheckBoxes.add("co2");

            newConfig.put("data",newCheckBoxes);
            //Ici on le sauvegarde sur la machine
            FileWriter file = new FileWriter("config.json");
            try {
                file.write(newConfig.toJSONString());
                return newConfig;

            } catch (Exception ef) {
                e.printStackTrace();
            } finally {
                file.flush();
                file.close();
            }

        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }


    /**   Prend le JSONObject retourne par readJson, et retourne la case adequate
     * @return String correspondant a "server" dans config.json
     * @throws IOException
     */    
    public String getServer() throws IOException {
        JSONObject config = readJson();
        String serverID = (String) config.get("server");
        return serverID;
    }

    /**   Prend le JSONObject retourne par readJson, et retourne la case adequate
     * @return String correspondant a "appID" dans config.json
     * @throws IOException
     */    
    public String getApp() throws IOException {
        JSONObject config = readJson();
        String appID = (String) config.get("appID");
        return appID;
    }

    /**   Prend le JSONObject retourne par readJson, et retourne la case adequate
     * @return String correspondant a "deviceID" dans config.json
     * @throws IOException
     */    
    public String getDevice() throws IOException {
        JSONObject config = readJson();
        String deviceID = (String) config.get("deviceID");
        return deviceID;
    }

    /**   Prend le JSONObject retourne par readJson, et retourne la case adequate
     * @return String correspondant a "refresh" dans config.json
     * @throws IOException
     */    
    public int getRefresh() throws IOException {
        JSONObject config = readJson();
        int refresh = ((Long)config.get("refresh")).intValue();
        return refresh;
    }

    /** Prend en paremetre le controller adéquat, et met les donnes de fichier config.json dans les TextFields
     * @param controller HelloController correspondant
     * @throws IOException
     */    public void loadValues(ConfigurationController controller) throws IOException {
        controller.server.setText(getServer());
        controller.appID.setText(getApp());
        controller.deviceID.setText(getDevice());
        controller.refresh.setValue(getRefresh());
        JSONObject config = readJson();
        JSONArray checkBoxes = (JSONArray) config.get("data");

        for (Object alpha : checkBoxes) {
            if (0 == alpha.toString().compareTo("temperature")) {
                controller.temperature.setSelected(true);
            }
            if (0 == alpha.toString().compareTo("humidity")) {
                controller.humidity.setSelected(true);

            }
            if (0 == alpha.toString().compareTo("co2")) {
                controller.co2.setSelected(true);

            }
        }

    }
}