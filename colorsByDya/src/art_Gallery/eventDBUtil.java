package art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class eventDBUtil {
	
	private static Connection con = null ;
	private static Statement stmt = null ;
	private static ResultSet rs = null;
	
	
	public static boolean insertEvent(String name, String date, String status, String description, String adminID ) {
		
		boolean isSuccess = false;
		
		try 
		{
			con = EventDBconnect.getConnection();
			stmt = con.createStatement();
			
			boolean stats = Boolean.parseBoolean(status);
			int admin = Integer.parseInt(adminID);
			String sql = "insert into event values (0,  '"+name+"', '"+date+"', '"+stats+"', '"+description+"', '"+admin+"')";  
			
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
 