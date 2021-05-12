package art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class eventDBUtil {
	
	public static boolean insertEvent(String name, String date, String status, String description, String adminID ) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
		String username = "root";
		String password = "root";
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement stmt = con.createStatement();
			
			boolean stats = Boolean.parseBoolean(status);
			int admin = Integer.parseInt(adminID);
			
			
			String sql = "insert into event (0,  '"+name+"', '"+date+"', '"+stats+"', '"+description+"', '"+admin+"')";  
			
			int result = stmt.executeUpdate(sql);
			
			if(result > 0)
			{
				isSuccess = true;
				
			}
			else
			{
				isSuccess = false;
				
			}
			
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
		
		
		
		
		
	}
	
	

}
 