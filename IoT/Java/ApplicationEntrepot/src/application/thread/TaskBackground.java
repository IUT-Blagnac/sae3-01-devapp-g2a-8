package application.thread;

import java.util.TimerTask;

import application.model.GestionDonnees;
import application.view.VisualisationController;
import javafx.application.Platform;

/**
 * Classe qui permet d'éxécuter une tâche répétée, puis lancer une autre tâche entre temps
 */
public class TaskBackground extends TimerTask {

    private final VisualisationController ctrl; //Le controleur lié à cette tâche
    private final GestionDonnees data; //La classe de lecture des données

    /**
     * Constructeur
     * @param ctrl le controleur
     * @param data la classe de lecture
     */
    public TaskBackground(VisualisationController ctrl, GestionDonnees data) {
        this.ctrl = ctrl;
        this.data = data;
    }

    /**
     * La tâche qui va s'éxécuter en boucle : rechargement des données, puis on rafraichit l'interface dès qu'on peut
     */
    @Override
    public void run() {

        //on recharge les données
        this.data.reloadData();

        //dès que possible on rafraichit l'interface
        Platform.runLater(TaskBackground.this.ctrl::loadValues);

        System.out.println("Rafraichissement des données");
    }
}
