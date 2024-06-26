package dev.fmartinez.analizadorlexicojflexfx;


import JFlex.Main;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.File;
import java.io.IOException;

public class HelloApplication extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("hello-view.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 320, 240);
        stage.setTitle("Hello!");
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args)  {
        launch();
        String ruta = "E:/sandbox/integrador-computacion/analizador-lexico-Jflex-fx/src/main/java/dev/fmartinez/analizadorlexicojflexfx/Lexex.flex";
        generateLexer(ruta);
    }

    public static void generateLexer(String ruta) {
        File file = new File(ruta);
        Main.generate(file);
    }
}