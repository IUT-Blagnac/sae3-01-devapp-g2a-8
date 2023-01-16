package application.model;

import java.io.*;

/**
 * Classe de lecture des données de l'application python
 */
public class GestionDonnees {

    //tableaux contenant toutes les données
    private String[] temperature;
    private String[] humidity;
    private String[] co2;

    /**
     * Constructeur de la classe de lecture des données
     *
     * @param choix tableau contenant le choix des types de données voulues (température, humidité ou CO2)
     */
    public GestionDonnees(String[] choix) {
        for (String s : choix) {
            if (s != null) {
                if (s.equals("temperature")) {
                    this.temperature = openData("temperature");
                } else if (s.equals("humidity")) {
                    this.humidity = openData("humidity");
                } else {
                    this.co2 = openData("co2");
                }
            }
        }
    }

    /**
     * Récupère les températures
     *
     * @return le tableau contenant toutes les températures
     */
    public String[] getTemperature() {
        return temperature;
    }

    /**
     * Récupère l'humidité
     *
     * @return le tableau contenant tous les taux d'humidité
     */
    public String[] getHumidity() {
        return humidity;
    }

    /**
     * Récupère le CO2
     *
     * @return le tableau contenant tous les taux de CO2
     */
    public String[] getCo2() {
        return co2;
    }

    /**
     * Récupère la dernière température enregistrée par les capteurs
     *
     * @return la dernière température
     */
    public String getLastTemperature() {
        if (this.temperature == null) {
            return "";
        }
        return temperature[temperature.length - 1];
    }

    /**
     * Récupère le dernier taux d'humidité enregistré par les capteurs
     *
     * @return le dernier taux d'humidité
     */
    public String getLastHumidity() {
        if (this.humidity == null) {
            return "";
        }
        return humidity[humidity.length - 1];
    }

    /**
     * Récupère le dernier taux de CO2 enregistré par les capteurs
     *
     * @return le dernier taux de CO2
     */
    public String getLastCO2() {
        if (this.co2 == null) {
            return "";
        }
        return co2[co2.length - 1];
    }

    /**
     * Ouvre les fichiers textes s'ils existent, les données sont séparées par des espaces blancs puis récupérées dans un tableau
     *
     * @param data le type de données voulu (temperature, humidity, ou co2)
     * @return le tableau contenant les données
     */
    private String[] openData(String data) {

        InputStream is = null;
        try {
            is = new FileInputStream(data + ".txt");
        } catch (FileNotFoundException e) {
            File file = new File(data + ".txt");
            try {
                file.createNewFile();
                is = new FileInputStream(data + ".txt");
            } catch (IOException ex) {
                System.out.println(ex);
            }
        }
        InputStreamReader isr = new InputStreamReader(is);
        BufferedReader buffer = new BufferedReader(isr);

        String line = null;
        StringBuilder builder = null;
        try {
            line = buffer.readLine();
            builder = new StringBuilder();
            while (line != null) {
                builder.append(line).append("\n");
                line = buffer.readLine();
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        String str = builder.toString();
        return str.split("\\s");
    }

    /**
     * Permet de récharger les données
     */
    public void reloadData() {
        if (this.temperature != null) {
            this.temperature = openData("temperature");
        }
        if (this.humidity != null) {
            this.humidity = openData("humidity");
        }
        if (this.co2 != null) {
            this.co2 = openData("co2");
        }
    }
}
