 package art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtilizer{
	private static String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
	private static String userName = "root";
	private static String password = "root";
	private static Connection con;
	
	public static Connection utilizeConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, userName, password);
		} catch (Exception e) {
			System.out.println("DBConnection is not success...!");
		}
		return con;
	}
}
