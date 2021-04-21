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
	private static boolean querySuccess;
	private static ArrayList<Payment> cardList = new ArrayList<>();
	
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
	
	public static boolean addPaymentCard(int userID, String cardNo, String nameOnCard, String expDate, String cvv, String checkbox) {
		Connection con;
		PreparedStatement pst;
		int rs;
		String UIDConverted = Integer.toString(userID);

		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement(
					"UPDATE registered_customer SET cardNumber = ?, nameOnCard = ?, expDate = ?, cvv = ? WHERE (customer_id = ?);");
			pst.setString(1, cardNo);
			pst.setString(2, nameOnCard);
			pst.setString(3, expDate);
			pst.setString(4, cvv);
			pst.setString(5, UIDConverted);
			rs = pst.executeUpdate();

			if (rs > 0) {
				querySuccess = true;
			} else {
				querySuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return querySuccess;
	}
	
	public static List<Payment> getCardDetails(int userID){
		String UIDConverted = Integer.toString(userID);
		PreparedStatement pst;
		Connection con;
		ResultSet RS;
		
		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("SELECT cardNumber, nameOnCard, expDate, cvv FROM registered_customer WHERE customer_id=?");
			pst.setString(1, UIDConverted);
			RS = pst.executeQuery();
			
			while (RS.next()) {
				int cardNo = RS.getInt(1);
				String nameOnCard = RS.getString(2);
				int expDate = RS.getInt(3);
				int cvv = RS.getInt(4);
				System.out.println("Card Number: " + cardNo);
				System.out.println("Name on card: " + nameOnCard);
				System.out.println("Expiry date: " + expDate);
				System.out.println("CVV: " + cvv);
				
				Payment cardObj = new Payment(cardNo, nameOnCard, expDate, cvv);
				System.out.println("Trying to add card details to payment.java");
				cardList.add(cardObj);
				System.out.println("Added...");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cardList;
	}
}
