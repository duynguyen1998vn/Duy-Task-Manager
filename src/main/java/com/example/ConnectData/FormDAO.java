package com.example.ConnectData;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class FormDAO {
	static Connection conn = MyConnection.TestConnect();

	public static int getIdUser(String account, String password) {
		Integer id = 0;
		String sql = "SELECT * FROM USERS " + "where USERS.Account ='" + account + "' " + "AND USERS.Pass='" + password
				+ "'";
		try {
			Statement stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				id = rs.getInt(1);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return id;
	}

	public static boolean createAccount(String account, String password) {
		
		String sql = "INSERT INTO USERS VALUES('" + account + "','" + password + "')";
		try {
			Statement stmt = (Statement) conn.createStatement();
			stmt.executeUpdate(sql);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	
	public static boolean addRole(int id) {
		String sql = "INSERT INTO USERS_MENU VALUES("+id+",'USER')";
		try {
			Statement stmt = (Statement) conn.createStatement();
			stmt.executeUpdate(sql);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
}
