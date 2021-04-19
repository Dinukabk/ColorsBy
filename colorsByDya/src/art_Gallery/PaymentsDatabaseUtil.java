package art_Gallery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PaymentsDatabaseUtil {
	private static boolean cardAvailability;
	private static String userName;
	
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
		// String userName;
		
		try {
			System.out.println("Customer ID in check card function: " + UIDConverted);
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("SELECT full_name, cardNumber FROM registered_customer WHERE customer_id = ?");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			while (rs.next()) {
				// userName = rs.getString(1);
				cardNumber = rs.getInt(2);
				System.out.println("Card number: " + cardNumber);
				if (cardNumber > 0) {
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
	
	public static List<Payment> checkCardList(int userID) {
		ArrayList<Payment> paymentArrL = new ArrayList<>();
		Connection con;
		PreparedStatement pst;
		String UIDConverted = Integer.toString(userID);
		ResultSet rs;
		Boolean cardAvailability;
		
		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("SELECT full_name, cardNumber FROM registered_customer WHERE customer_id = ?");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				String userName = rs.getString(1);
				System.out.println("Username in checkCardList: " + rs.getString(1));
				
				int cardNumber = rs.getInt(2);
				System.out.println("Card number in checkCardList: " + rs.getInt(2));
				
				if (cardNumber > 0) {
					cardAvailability = true;
				} else {
					cardAvailability = false;
				}
				
				Payment payment = new Payment(userName, cardAvailability);
				System.out.println("Card availability in checkCardList: " + cardAvailability);
				
				paymentArrL.add(payment);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return paymentArrL;		
	}
	
	public static String getUserName(int userID) {
		Connection con;
		PreparedStatement pst;
		String UIDConverted = Integer.toString(userID);
		ResultSet rs;
		
		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("SELECT full_name FROM registered_customer WHERE customer_id = ?");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				userName = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return userName;		
	}
}
