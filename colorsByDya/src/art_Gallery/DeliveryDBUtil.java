package art_Gallery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DeliveryDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement pst;
	private static int methodNumber;
	private static String method;

	public static List<DeliveryCustomer> validate(String userName, String password) {

		ArrayList<DeliveryCustomer> deliCus = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			// stmt = con.createStatement();
			// String sql = "select * from delivery where username='"+userName+"' and
			// password='"+password+"'";
			// rs = stmt.executeQuery(sql);
			pst = con.prepareStatement("SELECT * FROM registered_customer WHERE username=? AND password=?;");

			if (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String lineOne = rs.getString(3);
				String lineTwo = rs.getString(4);
				int pCode = rs.getInt(5);
				String Dprovince = rs.getString(6);
				String Dcity = rs.getString(7);
				String Dcountry = rs.getString(8);
				String Dstatus = rs.getString(9);
				int payId = rs.getInt(10);
				String userU = rs.getString(11);
				String passU = rs.getString(12);

				DeliveryCustomer DCus = new DeliveryCustomer(id, name, lineOne, lineTwo, pCode, Dprovince, Dcity,
						Dcountry, Dstatus, payId, userU, passU);
				deliCus.add(DCus);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return deliCus;
	}

	public static boolean insertDeliery(String fullName, String AdddLineOne, String AdddLineTwo, String postalCord,
			String province, String City, String Country) {

		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			pst = con.prepareStatement(
					"INSERT INTO delivery (`full_name`, `add_line_01`, `add_line_02`, `postal_code`, `province`, `city`, `country`) VALUES (?, ?, ?, ?, ?, ?, ?)");
			pst.setString(1, fullName);
			pst.setString(2, AdddLineOne);
			pst.setString(3, AdddLineTwo);
			pst.setString(4, postalCord);
			pst.setString(5, province);
			pst.setString(6, City);
			pst.setString(7, Country);
			int RS = pst.executeUpdate();
			// stmt = con.createStatement();
			// String sql = "insert into delivery values ('"+fDeliId+"', '"+fullName+"',
			// '"+AdddLineOne+"', '"+AdddLineTwo+"', '"+postalCord+"', '"+province+"',
			// '"+City+"', '"+Country+"', '"+Status+"', '"+paymentId+"')";
			// int rs = stmt.executeUpdate(sql);

			if (RS > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

	public static String checkDeliveryMethod(int userID) {
		String UIDConverted = Integer.toString(userID);
		PreparedStatement pst = null;
		ResultSet RS = null;
		Connection con;

		try {
			con = DBConnect.getConnection();
			pst = con.prepareStatement(
					"SELECT d.method FROM delivery d, registered_customer r, payment p WHERE d.p_payment_id = p.payment_id AND p.c_customer_id = r.customer_id AND r.customer_id = 1;");
			pst.setString(1, UIDConverted);
			RS = pst.executeQuery();
			while (RS.next()) {
				methodNumber = RS.getInt(1);
				if (methodNumber == 1) {
					method = "homeDelivery";
				} else if (methodNumber == 2) {
					method = "pickUp";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return method;
	}

}
