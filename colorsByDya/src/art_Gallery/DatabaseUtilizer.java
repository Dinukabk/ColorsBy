 package art_Gallery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class DatabaseUtilizer{
	private static String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
	private static String userName = "root";
	private static String password = "root";
	private static Connection con;
	
	public static Connection utilizeConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, userName, password);
			System.out.println("Connected to ColorsByDiyaa via Java SQL...");
		} catch (Exception e) {
			System.out.println("DBConnection is not success...!");
		}
		return con;
	}
	
	// Get shopping cart ID of the logged user
//	public static int getCartTotal(int userID) {
//		String UIDConverted = Integer.toString(userID);
//		PreparedStatement pst = null;
//		ResultSet rs = null;
//		int total = -1;
//
//		try {
//			con = DatabaseUtilizer.utilizeConnection();
//			pst = con.prepareStatement("select total from shopping_cart where r_customer_id=?");
//			pst.setString(1, UIDConverted);
//			rs = pst.executeQuery();
//			// Testing retrieve
//			while(rs.next()) {
//				total = rs.getInt(1);
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return total;
//	}
}
