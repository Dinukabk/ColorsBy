package art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;



public class RequestDBUtil {
	
	public static boolean insertSRequest(String name,String phone,String email,String message,String photograph,
			String add_line_01,String add_line_02,String postal_code,String province,String city,String country) {
		
		boolean isSuccess = false;
		
		//create DB connection
		String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
		String user = "root";
		String password = "root";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			String sql = "insert into special_request values (0,'"+name+"','"+phone+"','"+email+"','"+message+"','"+photograph+"','"+add_line_01+"','"+add_line_02+"','"+postal_code+"','"+province+"','"+city+"','"+country+"',0,0)";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
