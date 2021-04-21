package art_Gallery;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DeliveryDBUtil {
	
	//second time coding 
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	//Connection con = DriverManager.getConnection(url, user, pass);
	//Statement stmt = con.createStatement();
	//String sql = "insert into delivery values ('"+fDeliId+"', '"+fullName+"', '"+AdddLineOne+"', '"+AdddLineTwo+"', '"+postalCord+"', '"+province+"', '"+City+"', '"+Country+"', '"+Status+"', '"+paymentId+"', '"+Username+"', '"+Password+"')";
	//int rs = stmt.executeUpdate(sql);

	
public static List<DeliveryCustomer> validate(String userName, String password){
		
		ArrayList<DeliveryCustomer> deliCus = new ArrayList<>();
	
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from delivery where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
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
				
				DeliveryCustomer DCus = new  DeliveryCustomer(id, name, lineOne, lineTwo, pCode, Dprovince, Dcity, Dcountry, Dstatus, payId, userU, passU);
				deliCus.add(DCus);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return deliCus;
	}
	
	public static boolean insertDeliery(String fDeliId, String fullName, String AdddLineOne, String AdddLineTwo, String postalCord, String province, String City, String Country , String Status, String paymentId, String Username, String Password) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into delivery values ('"+fDeliId+"', '"+fullName+"', '"+AdddLineOne+"', '"+AdddLineTwo+"', '"+postalCord+"', '"+province+"', '"+City+"', '"+Country+"', '"+Status+"', '"+paymentId+"', '"+Username+"', '"+Password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
