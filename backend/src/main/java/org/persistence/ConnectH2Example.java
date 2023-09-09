package org.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectH2Example {

    public static void main(String[] args) throws SQLException {
        String jdbcUrl = "jdbc:h2:mem:test";

        Connection connection = DriverManager.getConnection(jdbcUrl);

        System.out.println("Connected to H2 in-memory database.");

        String sql = "SELECT * FROM LECTURERS";

        Statement statement = connection.createStatement();

        statement.execute(sql);

        connection.close();

    }
}
