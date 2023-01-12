package application.thread;

import java.util.TimerTask;

import application.model.GestionDonnees;
import application.view.VisualisationController;
import javafx.application.Platform;

public class TaskBackground extends TimerTask {

    private VisualisationController ctrl;
    private GestionDonnees data;

    public TaskBackground(VisualisationController ctrl, GestionDonnees data) {
        this.ctrl = ctrl;
        this.data = data;
    }

    @Override
    public void run() {

        this.data.reloadData();

        Platform.runLater(new Runnable() {
            @Override
            public void run() {
                TaskBackground.this.ctrl.loadValues();
            }
        });

        System.out.println("TaskBackground");
    }
}
