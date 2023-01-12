package application.model;

import java.io.*;

public class GestionDonnees {

    private String[] temperature;
    private String[] humidity;
    private String[] co2;

    public String[] getTemperature() {
        return temperature;
    }

    public String[] getHumidity() {
        return humidity;
    }

    public String[] getCo2() {
        return co2;
    }

    public String getLastTemperature() {
        if (this.temperature==null){
            return "";
        }
        return temperature[temperature.length-1];
    }

    public String getLastHumidity() {
        if (this.humidity==null){
            return "";
        }
        return humidity[humidity.length-1];
    }

    public String getLastCO2() {
        if (this.co2==null){
            return "";
        }
        return co2[co2.length-1];
    }

    public GestionDonnees(String[] choix) {
        for (String s : choix) {
            if (s!=null) {
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

    public String[] openData(String data) {

        InputStream is = null;
        try {
            is = new FileInputStream(data+".txt");
        } catch (FileNotFoundException e) {
            File file = new File(data+".txt");
            try {
                file.createNewFile();
                is = new FileInputStream(data+".txt");
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
            while(line != null){
                builder.append(line).append("\n");
                line = buffer.readLine();
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        String str = builder.toString();
        return str.split("\\s");
    }

    public void reloadData() {
        if (this.temperature!=null) {
            this.temperature=openData("temperature");
        }
        if (this.humidity!=null) {
            this.humidity=openData("humidity");
        }
        if (this.co2!=null) {
            this.co2=openData("co2");
        }
    }
}
