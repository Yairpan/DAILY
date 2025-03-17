package com.mycompany.dailyapp.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestConexion {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/dailydb"; 
        String usuario = "root"; 
        String contraseña = ""; 

        try (Connection conexion = DriverManager.getConnection(url, usuario, contraseña)) {
            if (conexion != null) {
                System.out.println("Conexión exitosa a la base de datos.");
            }
        } catch (SQLException e) {
            System.out.println("Error al conectar: " + e.getMessage());
        }
    }
}
