module dev.fmartinez.analizadorlexicojflexfx {
    requires javafx.controls;
    requires javafx.fxml;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires net.synedra.validatorfx;
    requires org.kordamp.bootstrapfx.core;
    requires JFlex;

    opens dev.fmartinez.analizadorlexicojflexfx to javafx.fxml;
    exports dev.fmartinez.analizadorlexicojflexfx;
}