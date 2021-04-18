package art_Gallery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PaymentsDatabaseUtil {
	private int paymentAmount = 100000;
	// payment amount = ShoppingCart.getTotal();
	private int paymentStatus = 0;
	private int cardNumber;
	// cardNumber = session.getCardNumber(userID);
	private String nameOnCard;
	// nameOnCard = session.getNameOnCard(userID);
	private int expDate;
	// expDate = session.getExpDate(userID);
	private int cvv;
	// cvv = session.getCVV(userID);
	
	public static int getCartTotal(int userID) {
		String UIDConverted = Integer.toString(userID);
		PreparedStatement pst = null;
		ResultSet rs = null;
		int total = -1;
		Connection con;

		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("select total from shopping_cart where r_customer_id=?");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			// Testing retrieve
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
}
