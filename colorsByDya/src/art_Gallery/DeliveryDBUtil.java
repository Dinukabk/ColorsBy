package art_Gallery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ibm.db2.jcc.a.d;

public class DeliveryDBUtil {
	// second time coding
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement pst;
	public static List<DeliveryCustomer> validate(String userName, String password) {

		ArrayList<DeliveryCustomer> deliCus = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
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
				DeliveryCustomer DCus = new DeliveryCustomer(id, name, lineOne, lineTwo, pCode, Dprovince, Dcity,
						Dcountry, Dstatus, payId);
				deliCus.add(DCus);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return deliCus;
	}

	public static boolean insertDeliery(String fullName, String AdddLineOne, String AdddLineTwo, String postalCord,
			String province, String City, String Country, int pid) {

		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			pst = con.prepareStatement(
					"INSERT INTO delivery (`full_name`, `add_line_01`, `add_line_02`, `postal_code`, `province`, `city`, `country`,`p_payment_id`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
			pst.setString(1, fullName);
			pst.setString(2, AdddLineOne);
			pst.setString(3, AdddLineTwo);
			pst.setString(4, postalCord);
			pst.setString(5, province);
			pst.setString(6, City);
			pst.setString(7, Country);
			pst.setInt(8, pid);
			int RS = pst.executeUpdate();

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

	// Retrieve information from delivery table
	public static DeliveryCustomer retriveDeliveryInfo(int pid) throws SQLException {

		con = DBConnect.getConnection();
		String selectQuery = "Select delivery_id, full_name, add_line_01, add_line_02, postal_code, province, city, country, p_payment_id from colorbydiyaa.delivery where p_payment_id = ?";
		PreparedStatement ptR = con.prepareStatement(selectQuery);
		ptR.setInt(1, pid);
		// create object of DeliveryCustomer
		DeliveryCustomer deliveryCustomer = new DeliveryCustomer();
		ResultSet rs = ptR.executeQuery();

		// get data
		while (rs.next()) {

			deliveryCustomer.setDelivery_id(rs.getInt(1));
			deliveryCustomer.setFull_name(rs.getString(2));
			deliveryCustomer.setAdd_line_01(rs.getString(3));
			deliveryCustomer.setAdd_line_02(rs.getString(4));
			deliveryCustomer.setPostal_code(rs.getInt(5));
			deliveryCustomer.setProvince(rs.getString(6));
			deliveryCustomer.setCity(rs.getString(7));
			deliveryCustomer.setCountry(rs.getString(8));
			deliveryCustomer.setP_payment_id(rs.getInt(9));

		}

		return deliveryCustomer;
	}

	// update method
	public static boolean updatedDeliveryInfo(DeliveryCustomer d) throws SQLException {
		con = DBConnect.getConnection();

		String updatequery = "UPDATE `colorbydiyaa`.`delivery`\r\n"
				+ "SET `full_name` = ?,`add_line_01` = ?,`add_line_02` = ?,`postal_code` = ?,`province` = ?,`city` = ?,`country` = ? WHERE `delivery_id` = ?";
		PreparedStatement preparedStatement = con.prepareStatement(updatequery);

		preparedStatement.setString(1, d.getFull_name());
		preparedStatement.setString(2, d.getAdd_line_01());
		preparedStatement.setString(3, d.getAdd_line_02());
		preparedStatement.setInt(4, d.getPostal_code());
		preparedStatement.setString(5, d.getProvince());
		preparedStatement.setString(6, d.getCity());
		preparedStatement.setString(7, d.getCountry());
		preparedStatement.setInt(8, d.getDelivery_id());

		int res = preparedStatement.executeUpdate();
		if (res == 1) {
			return true;
		} else {
			return false;
		}

	}//hiii
}