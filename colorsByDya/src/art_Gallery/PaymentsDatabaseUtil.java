package art_Gallery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PaymentsDatabaseUtil {
	private static boolean cardAvailability;
	
	public static int getCartTotal(int userID) {
		String UIDConverted = Integer.toString(userID);
		PreparedStatement pst = null;
		ResultSet rs = null;
		int total = -1;
		Connection con;

		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("SELECT total FROM shopping_cart WHERE r_customer_id=?");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			// Retrieve
			while(rs.next()) {
				total = rs.getInt(1);
			}
			System.out.println("On payment database utilizer...");
			System.out.println("Payment total: " + total);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return total;
	}
	
	public static boolean checkCard(int userID) {
		String UIDConverted = Integer.toString(userID);
		PreparedStatement pst = null;
		ResultSet rs = null;
		Connection con;
		double cardNumber;
		
		try {
			System.out.println("CID In check card function: " + UIDConverted);
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("SELECT card_no FROM payment WHERE c_customer_id=?");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			while (rs.next()) {
				cardNumber = rs.getInt(1);
				System.out.println("Card number: " + cardNumber);
				if (Double.toString(cardNumber) != "") {
					cardAvailability = true;
					System.out.println("Card available...");
				} else {
					cardAvailability = false;
					System.out.println("No card in the databse...");
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return cardAvailability;
	}
}
