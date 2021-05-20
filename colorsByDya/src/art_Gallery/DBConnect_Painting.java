package art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect_Painting {
	
	// create db connection
	private static String db_url = "jdbc:mysql://localhost:3306/colorbydiyaa";
	private static String db_username = "root";
	private static String db_password = "root";
	
	private static Connection connect;

// connection method passed to DBUtil	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			connect = DriverManager.getConnection(db_url, db_username, db_password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return connect;
	}

}
