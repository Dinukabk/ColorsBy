 package art_Gallery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;

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
	
	// Get shopping cart ID of the logged user
	public static int getCartID(int userID) {
		String UIDConverted = Integer.toString(userID);
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			pst = con.prepareStatement("select total from shopping_cart where r_customer_id=?");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			// Query executed and now the question is how to retrieve the total
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userID;
	}
}
