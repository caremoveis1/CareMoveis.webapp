package com.example.javawebapp.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

    public static Connection getConnection() {
        String url = "jdbc:mysql://localhost/caremoveis?user=webappcaremoveis&password=caremoveis";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
