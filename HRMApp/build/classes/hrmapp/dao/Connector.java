/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hrmapp.dao;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dangm
 */
public class Connector {

    public static final String CONNECTION_URL = "jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=HumanResourceManager";
    public static final String USERNAME = "sa";
    public static final String PASSWORD = "";

    public Connection getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
        } catch (SQLException ex) {
            throw new RuntimeException("Error connecting to the database", ex);
        } catch (ClassNotFoundException ex) {
            throw new RuntimeException("Driver not found", ex);
        }
    }
}
