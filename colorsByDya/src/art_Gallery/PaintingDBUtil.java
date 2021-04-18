package art_Gallery;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaintingDBUtil {
	
	private static boolean isSuccess;
	
	private static Connection connect = null;
	private static Statement statement = null;
	private static ResultSet resultSet = null;
	
	// validate user
	public static boolean validate(String username, String password) {
		
		try {
			connect = DBConnect_Painting.getConnection();
			statement = connect.createStatement();
			String sql = "select * from artist where name='"+username+"' and password='"+password+"'";
			resultSet = statement.executeQuery(sql);
			
			if (resultSet.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}// validate() end
	
	
	public static boolean insertPainting (String painting_id, String title, String description, String price, String drawn_date, String category,
			String weight, String length, String width, String image_url, String material, String in_stock,
			String frame) {
		
		boolean isSuccess = false;
		
		/*
		 * create db connection 
		 * 
		 * String db_url ="jdbc:mysql://localhost:3306/colorbydiyaa"; 
		 * String db_username = "root";
		 * String db_password = "root";
		 */
		
		try {
			
			connect = DBConnect_Painting.getConnection();
    		statement = connect.createStatement();
    		
    		String sql = "insert into painting (title, description, price, weight, length, width, material, frame) values('"+title+"', '"+description+"', '"+price+"', '"+weight+"', '"+length+"', '"+width+"', '"+material+"', '"+frame+"')";
    		
    	    
    		int resultSet = statement.executeUpdate(sql);
    		
    		if(resultSet > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}			
			
		}// insert - try end
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;		
	} // insertPainting end
	
	// Retrieve data
	
	public static List<Painting> displayPaintingList(String username, String password){
		
		// id String to int conversion
		//int convertedID = Integer.parseInt(painting_id);
		
		ArrayList<Painting> painting = new ArrayList<>();
		
		try {
			
			connect = DBConnect_Painting.getConnection();
    		statement = connect.createStatement();
    		
    		//String sql = "select * from painting where painting_id ='"+convertedID+"'";
    		String sql = "select * from painting p, artist a where a.name='"+username+"' and a.password='"+password+"' and p.a_artist_id = a.artist_id";
    	    
    		resultSet = statement.executeQuery(sql);
    		
    		while(resultSet.next()) {
    			
    			int paintingID = resultSet.getInt(1);
    			String title = resultSet.getString(2);
    			String description = resultSet.getString(3);
    			double price = resultSet.getDouble(4);
    			Date drawn_date = resultSet.getDate(5);
    			String category = resultSet.getString(6);
    			double weight = resultSet.getDouble(7);
    			double length = resultSet.getDouble(8);
    			double width = resultSet.getDouble(9);
    			String image_url = resultSet.getString(10);
    			String material = resultSet.getString(11);
    			boolean in_stock = resultSet.getBoolean(12);
    			String frame = resultSet.getString(13);
    			
    			// pass above values into Painting Class constructor as parameters
    			Painting objectPaint = new Painting(paintingID,  title,  description,  price,  drawn_date,  category,  weight,  length,  width,  image_url,  material,  in_stock,  frame);
    			
    			painting.add(objectPaint);
    			
    		} // end of While
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return painting;
	} // displayPaintingList end
	
	
	// Update
	
	// Assign the variables in the Servlet as Parameters here
	public static boolean updatePainting (String painting_id, String title, String description, String price, String drawn_date, String category,
			String weight, String length, String width, String image_url, String material, String in_stock, String frame) {
    	
    	try {
    		
    		connect = DBConnect_Painting.getConnection();
    		statement = connect.createStatement();
    		    		
    		String sql = "update painting set title='"+title+"' , description='"+description+"' , price='"+price+"' , drawn_date='"+drawn_date+"', category= '"+category+"', weight='"+weight+"' , length='"+length+"' , width='"+width+"' , image_url= '"+image_url+"', material='"+material+"' , in_stock= '"+in_stock+"', frame='"+frame+"'" + "where painting_id='"+painting_id+"'";  
    		
    		int resultSet = statement.executeUpdate(sql);
    		
    		if(resultSet > 0) {
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
    }// end of Update

}
