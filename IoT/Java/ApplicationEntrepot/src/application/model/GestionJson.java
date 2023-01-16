package application.model;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Collections;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 * Classe qui permet d'ouvrir, de créer et de modifier le fichier config.json contenant les configurations nécessaires pour l'application python
 */
public class GestionJson {

    private final JSONObject config; //le fichier
    private String server; //l'adresse du serveur
    private String appID; //le numéro de l'application
    private String deviceID; //le numéro du capteur, ou + pour signifier tous les capteurs
    private int refresh; //le taux de rafraichissement des données
    private JSONArray data; //le tableau contenant les types de données voulus

    /**
     * Constructeur qui récupère les données
     */
    public GestionJson() {
        this.config = readJson();
        this.server = (String) this.config.get("server");
        this.appID = (String) this.config.get("appID");
        this.deviceID = (String) this.config.get("deviceID");
        this.refresh = Integer.parseInt(this.config.get("refresh").toString());
        this.data = (JSONArray) this.config.get("data");
    }

    /**
     * Lit le fichier config.json s'il existe, le créé sinon, permet de récupérer les données
     *
     * @return JSONObject qui correspond a des donnes dans le fichier config
     */
    private JSONObject readJson() {
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
            //Sinon, on le cree avec des valeurs par défaut
            JSONObject newConfig = new JSONObject();
            newConfig.put("server", "chirpstack.iut-blagnac.fr");
            newConfig.put("appID", "1");
            newConfig.put("deviceID", "+");
            newConfig.put("refresh", 1);

            JSONArray newCheckBoxes = new JSONArray();
            newCheckBoxes.add("temperature");
            newCheckBoxes.add("humidity");
            newCheckBoxes.add("co2");

            newConfig.put("data", newCheckBoxes);


            FileWriter file;
            try {
                //Ici on le sauvegarde sur la machine
                file = new FileWriter("config.json");
                file.write(newConfig.toJSONString());
                file.flush();
                file.close();
                return newConfig;
            } catch (Exception e1) {
                e1.printStackTrace();
            }

        } catch (IOException | ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Permet d'écrire la nouvelle configuration voulue (changée par l'interface) dans le fichier config.json
     */
    public void writeJson() {
        try {
            FileWriter file = new FileWriter("config.json");
            file.write(this.config.toJSONString());
            file.flush();
            file.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Récupère l'adresse du serveur où se trouve le réseau de capteurs
     *
     * @return l'adresse du serveur
     */
    public String getServer() {
        return this.server;
    }

    /**
     * Récupère le numéro de l'application où se trouve les capteurs
     *
     * @return le numéro de l'application
     */
    public String getAppID() {
        return this.appID;
    }

    /**
     * Récupère le numéro du capteur dont on veut écouter les données, peut être + pour indiquer tous les capteurs
     *
     * @return le numéro du capteur
     */
    public String getDeviceID() {
        return this.deviceID;
    }

    /**
     * Récupère le taux auquel les données seront récupérées par l'application
     *
     * @return le taux de rafraichissement
     */
    public int getRefresh() {
        return this.refresh;
    }

    /**
     * Récupère les types de données voulus (temperature, humidity, ou co2)
     *
     * @return le tableau des types de données
     */
    public String[] getData() {
        String[] result = new String[3];
        int i = 0;
        for (Object o : this.data) {
            if (o != null) {
                result[i] = o.toString();
                i++;
            }
        }
        return result;
    }

    /**
     * @param server adresse du serveur
     */
    public void setServer(String server) {
        this.server = server;
        this.config.put("server", server);
    }

    /**
     * @param appID numéro de l'application
     */
    public void setAppID(String appID) {
        this.appID = appID;
        this.config.put("appID", appID);
    }

    /**
     * @param deviceID numéro du capteur
     */
    public void setDeviceID(String deviceID) {
        this.deviceID = deviceID;
        this.config.put("deviceID", deviceID);
    }

    /**
     * @param refresh taux de rafraichissement
     */
    public void setRefresh(int refresh) {
        this.refresh = refresh;
        this.config.put("refresh", refresh);
    }

    /**
     * @param data tableau des types de données
     */
    public void setData(String[] data) {
        this.data.clear();
        Collections.addAll(this.data, data);
        this.config.put("data", this.data);
    }

}
