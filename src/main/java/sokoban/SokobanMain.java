package sokoban;

import com.codingame.gameengine.runner.SoloGameRunner;

public class SokobanMain {
    public static void main(String[] args) {
        SoloGameRunner gameRunner = new SoloGameRunner();
        gameRunner.setAgent(Agent.class);
        //CHANGER ICI LE NIVEAU
        gameRunner.setTestCase("test1.json");

        gameRunner.start();
    }
}
