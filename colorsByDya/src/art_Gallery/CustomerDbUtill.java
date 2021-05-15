package art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDbUtill {
	
	public static List<CustomerNew> validate(String userName, String password){
		
		ArrayList<CustomerNew> cus = new ArrayList<>();
		
		//create Db connection
		String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
		String user = "root";
		String pass = "root";
		
		//Validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();	
			String sql = "select * from registered_customer where username='"+userName+"' and password='"+password+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String full_name = rs.getString(2);
				String username = rs.getString(3);
				String passU = rs.getString(4);
				String phone_no = rs.getString(5);
				String add_line_01 = rs.getString(6);
				String add_line_02 = rs.getString(7);
				int postal_code = rs.getInt(8);
				String province = rs.getString(9);
				String city = rs.getString(10);
				String country = rs.getString(11);
				
				CustomerNew c = new CustomerNew(id,full_name,username,passU,phone_no,add_line_01,add_line_02,postal_code,province,city,country);
				cus.add(c);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return cus;
		
	}
	
//customer details insert
	public static boolean insertcustomer(String fname,String pNumber,String Address1,String Address2,String pCode,String City,String Province,String Country,String UserName,String Password) {
		
		boolean isSuccess = false;
		//create Db connection
				String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
				String user = "root";
				String pass = "root";
				
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();	
			
			String sql = "INSERT INTO registered_customer VALUES (0,'"+fname+"','"+UserName+"','"+Password+"','"+pNumber+"','"+Address1+"','"+Address2+"','"+pCode+"','"+Province+"','"+City+"','"+Country+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
			isSuccess = true;	
			}else {
				isSuccess = false;
			}
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
}
