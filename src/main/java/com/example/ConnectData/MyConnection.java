package com.example.ConnectData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.microsoft.sqlserver.jdbc.SQLServerDriver;

public class MyConnection {
	public static Connection TestConnect() {
		Connection conn = null;
        //Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); // tìm driver , phiên bản java cũ thì cần mới thì 0
        String dbURL = "jdbc:sqlserver://ADMIN:1433;databaseName=DUYDATABASE";
        // DESKTOP-U3GVQTN:1433 (Tên Host : port )
        String USER_NAME = "tduy1998vn";
        String PASSWORD = "123";
        try {
        	DriverManager.registerDriver(new SQLServerDriver());    
            conn = DriverManager.getConnection(dbURL, USER_NAME, PASSWORD); 
            System.out.println("connect successfully!");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return conn;
	}
}
