package art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class PaintingDBUtil {
	
	public static boolean uploadPainting (String title, String description, String price, String weight,
			String length, String width, String material, String frame) {
		
		boolean isSuccess = false;
		
		// create db connection
		String db_url = "jdbc:mysql://localhost:3306/colorbydiyaa";
		String db_username = "root";
		String db_password = "root";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection connect = DriverManager.getConnection(db_url, db_username, db_password);
			
			Statement statement = connect.createStatement();
			
			String sql = "insert into painting ('title', 'description', 'price', 'weight', 'length', 'width', 'material', 'frame') values('"+title+"', '"+description+"', '"+price+"', '"+weight+"', '"+length+"', '"+width+"', '"+material+"', '"+frame+"')";        
			
			int resultSet = statement.executeUpdate(sql);
			
			if(resultSet > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}// try end
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;		
	}

}
