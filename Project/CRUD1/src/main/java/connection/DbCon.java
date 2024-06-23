package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	private static Connection connection=null;//wrapper class
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if(connection == null) {
			//loading the JDBC driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle","root","Kajanthu12@");
			System.out.print("Connected!");
		}
		return connection;
	}

}
