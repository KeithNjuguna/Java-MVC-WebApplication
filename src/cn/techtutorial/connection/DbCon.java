package cn.techtutorial.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	private static Connection connection = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
	    if (connection == null) {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce_cart", "root", "sqlpass254");
	        
	        // Check connection
	        if (connection != null && !connection.isClosed()) {
	            System.out.println("Database Connection successful.");
	        } else {
	            System.out.println("Failed to establish connection.");
	        }
	    }
	    return connection;
	}
}
