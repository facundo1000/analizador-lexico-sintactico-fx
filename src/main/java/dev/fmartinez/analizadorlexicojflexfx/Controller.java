package dev.fmartinez.analizadorlexicojflexfx;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;

public class Controller {
    @FXML
    private Button BAbrirArchivo;

    @FXML
    private Button BAnalizarLexico;

    @FXML
    private Button BLimpiarLexico;

    @FXML
    private Button BAnalizarSintactico;

    @FXML
    private Button BlimpiarSintatico;

    @FXML
    private TextArea textAreaLexico;

    @FXML
    private TextArea textAreaSintactico;

    @FXML
    private void initialize() {
        // Inicialización si es necesario
    }

    @FXML
    private void abrirArchivo() {
        // Implementación para abrir archivo
        System.out.println("Abrir archivo");
    }

    @FXML
    private void analizarLexico() {
        // Implementación para analizar léxico
        System.out.println("Analizar léxico");
    }

    @FXML
    private void limpiarLexico() {
        // Implementación para limpiar análisis léxico
        System.out.println("Limpiar léxico");
    }

    @FXML
    private void analizarSintactico() {
        // Implementación para analizar sintáctico
        System.out.println("Analizar sintáctico");
    }

    @FXML
    private void limpiarSintactico() {
        // Implementación para limpiar análisis sintáctico
        System.out.println("Limpiar sintáctico");
    }
}