package Modelo;



import java.sql.*;
public class conexion {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/tiendaVideojuegos";
        String user = "root";
        String password = "1234";

        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            System.out.println("Conexion hecha con exito");
        } catch (SQLException e) {
            System.err.println(" No se ha podido conectar a la base de datos ");
        }
    }
}
