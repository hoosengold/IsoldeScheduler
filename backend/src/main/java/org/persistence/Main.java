package org.persistence;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.ResultSet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

@SpringBootApplication
public class Main {
    public static void main(String[] args) throws SQLException {

        System.out.print("Hello and welcome!");

        for (int i = 1; i <= 5; i++) {
            System.out.println("i = " + i);
        }

        String jdbcUrl = "jdbc:h2:mem:testdb";

        Connection connection = DriverManager.getConnection(jdbcUrl);

        System.out.println("Connected to H2 in-memory database.");

        String sql = "SELECT * FROM LECTURERS";

        Statement statement = connection.createStatement();

        statement.execute(sql);
        statement.toString();

        connection.close();
    }
}