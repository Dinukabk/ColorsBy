package art_Gallery;

import java.sql.Connection;
import java.sql.Date;
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
	private static int cardNo;
	private static String nameOnCard;
	private static Date expDate;
	private static int cvv;
	private static int rsInt = 0;

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
			while (rs.next()) {
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
			pst = con.prepareStatement("SELECT card_number FROM rc_card WHERE customer_id = ?");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			cardAvailability = false;
			while (rs.next()) {
				cardNumber = rs.getInt(1);
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

			while (rs.next()) {
				userName = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return userName;
	}

	public static boolean addPaymentCard(int userID, String cardNo, String nameOnCard, String expDate, String cvv,
			String checkbox) {
		Connection con;
		PreparedStatement pst;
		int rs;
		int cardNoConverted = Integer.parseInt(cardNo);
		Date expDateConverted = Date.valueOf(expDate);
		int cvvConverted = Integer.parseInt(cvv);

		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("INSERT INTO rc_card (customer_id, card_number, name_on_card, expiry_date, cvv) VALUES(?, ?, ?, ?, ?)");
			pst.setInt(1, userID);
			pst.setInt(2, cardNoConverted);
			pst.setString(3, nameOnCard);
			pst.setDate(4, expDateConverted);
			pst.setInt(5, cvvConverted);
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

	public static List<Payment> getCardDetails(int userID) { // Get card details as a list
		String UIDConverted = Integer.toString(userID);
		PreparedStatement pst = null;
		Connection con = null;
		ResultSet RS = null;

		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("SELECT card_number, name_on_card, expiry_date, cvv " + "FROM rc_card "
					+ "WHERE customer_id=?");
			pst.setString(1, UIDConverted);
			RS = pst.executeQuery();

			while (RS.next()) {
				cardNo = RS.getInt(1);
				nameOnCard = RS.getString(2);
				expDate = RS.getDate(3);
				cvv = RS.getInt(4);

				Payment cardObj = null;
				cardObj = new Payment(cardNo, nameOnCard, expDate, cvv);
				cardList.add(cardObj);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return cardList;
	}

	public static boolean editCard(int userID, String nameOnCard, String cardNumber, String cvv, String date) {
		// String UIDConverted = Integer.toString(userID);
		PreparedStatement pst = null;
		Connection con = null;
		int cardNoConverted = Integer.parseInt(cardNumber);
		Date expDateConverted = Date.valueOf(date);
		int cvvConverted = Integer.parseInt(cvv);

		try { // Updating the table
			// Getting connection
			con = DatabaseUtilizer.utilizeConnection();

			// Preparing statement
			pst = con.prepareStatement(
					"UPDATE rc_card SET card_number = ?, name_on_card = ?, expiry_date = ?, cvv = ? WHERE customer_id = ?");
			pst.setInt(1, cardNoConverted);
			pst.setString(2, nameOnCard);
			pst.setDate(3, expDateConverted);
			pst.setInt(4, cvvConverted);
			pst.setInt(5, userID);

			// Executing update
			rsInt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (rsInt > 0) { // Returning the update information
			return true;
		} else {
			return false;
		}
	}

	public static Boolean deleteCard(int userID) {
		PreparedStatement pst = null;
		Connection con = null;
		
		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("DELETE FROM rc_card WHERE customer_id = ?");
			pst.setInt(1, userID);
			rsInt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (rsInt > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public static int getCardNo() {
		return cardNo;
	}

	public static String getNameOnCard() {
		return nameOnCard;
	}

	public static Date getExpDate() {
		return expDate;
	}

	public static int getCVV() {
		return cvv;
	}

}