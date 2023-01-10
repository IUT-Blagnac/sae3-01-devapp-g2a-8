package application.model;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class GestionJson {

	private JSONObject config;
	private String server;
	private String appID;
	private String deviceID;
	private int refresh;
	private JSONArray data;

	public GestionJson () {
		this.config=readJson();
		this.server=(String)this.config.get("server");
		this.appID=(String)this.config.get("appID");
		this.deviceID=(String)this.config.get("deviceID");
		this.refresh=((Long)config.get("refresh")).intValue();
		this.data=(JSONArray)config.get("data");
	}

	/** Cette fonction prend le fichier config.json, le lit, et si elle le trouve pas elle cree un nouveaux, puis retourne les donnes.
	 * @return JSONObject qui correspond a des donnes dans le fichier config
	 * @throws IOException
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
			FileWriter file;
			try {
				file = new FileWriter("config.json");
				file.write(newConfig.toJSONString());
				file.flush();
				file.close();
				return newConfig;
			} catch (Exception e1) {
				e1.printStackTrace();
			} 

		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	
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
    
	public String getServer() {
		return this.server;
	}
 
	public String getAppID() {
		return this.appID;
	}
  
	public String getDeviceID() {
		return this.deviceID;
	}
	
	public int getRefresh() {
		return this.refresh;
	}
	
	public String[] getData() {
		String [] result = new String [3];
		int i=0;
		for (Object o : this.data) {
			result[i]=o.toString();
			i++;
		}
		return result;
	}
	
	public void setServer(String server) {
		this.server = server;
		this.config.put("server", server);
	}

	public void setAppID(String appID) {
		this.appID = appID;
		this.config.put("appID", appID);
	}

	public void setDeviceID(String deviceID) {
		this.deviceID = deviceID;
		this.config.put("deviceID", deviceID);
	}

	public void setRefresh(int refresh) {
		this.refresh = refresh;
		this.config.put("refresh", refresh);
	}

	public void setData(String[] data) {
		this.data.clear();
		for (String s : data) {
			this.data.add(s);
		}
		this.config.put("data", this.data);
	}

}
