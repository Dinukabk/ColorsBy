package art_Gallery;

import java.sql.*;

public class DeliveryDeleteJava {
	
	public static void main(String[] args) throws SQLException {
		
		//Credentials
		String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
		String user = "root";
		String pass = "root";
		
		Connection conn = null;
		Statement stmt = null;
		
		try {		
				//getting a connection to my sql database
				conn = DriverManager.getConnection(url, user, pass);
				
				//creating the stmt
				stmt = conn.createStatement();
				
				//executing the sql query
				String sql = "delete from delivery where delivery_id='127'";
				int numberAffectedRow = stmt.executeUpdate(sql);
				
				System.out.println("Row affected: " + numberAffectedRow);
				System.out.println("Delete Copmpleted");
				
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}finally {
			if(stmt!= null) {
				stmt.close();
			}if(conn != null) {
				conn.close();
			}
		}
		
	}

}
