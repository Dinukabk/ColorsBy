package art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class RequestDBUtil {
	
	public static List<Request> validate(String userName, String pass){
		
		ArrayList<Request> req = new ArrayList<>();
		
		//create DB connection
		String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
		String user = "root";
		String password = "root";
		
		//validate instead of session
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			
			String sql = "select * from special_request sr, artist a where a.name='"+userName+"' and a.pass='"+pass+"' and sr.artist_name=a.artist_id";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int request_id = rs.getInt(1);
				String name = rs.getString(2);
				int phone = rs.getInt(3);
				String email = rs.getString(4);
				String message = rs.getString(5);
				String photograph = rs.getString(6);
				String add_line_01 = rs.getString(7);
				String add_line_02 = rs.getString(8);
			    int postal_code = rs.getInt(9);
				String province = rs.getString(10);
				String city = rs.getString(11);
				String country = rs.getString(12);
				int artist_name = rs.getInt(13);
				
				Request r = new Request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,artist_name);
				req.add(r);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return req;
		
	}
	
	
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
			String sql = "insert into special_request values (0,'"+name+"','"+phone+"','"+email+"','"+message+"','"+photograph+"','"+add_line_01+"','"+add_line_02+"','"+postal_code+"','"+province+"','"+city+"','"+country+"',1,1)";
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
