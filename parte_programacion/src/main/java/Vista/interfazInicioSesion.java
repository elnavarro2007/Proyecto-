package Vista;

import javax.swing.*;

public class interfazInicioSesion {



    public static void main(String[] args) {
        ajustesVentana();
    }

    public static void ajustesVentana() {
        int ancho = 1024;
        int altura = 768;
        JFrame frame = new JFrame("Inicio Sesion");
        frame.setSize(ancho, altura);

        frame.setResizable(false);
        frame.setVisible(true);

    }

    public static void escribir (){

        JLabel etiqueta = new JLabel();
    }


}
