package art_Gallery;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaintingDBUtil {
	
	private static boolean isSuccess;
	
	private static Connection connect = null;
	private static Statement statement = null;
	private static ResultSet resultSet = null;
	
	private static String cusUsername;
	private static String artistUsername;
	
	/*
	FileInputStream fs=null;
	PreparedStatement ps=null;
	 
	File f=new File("/home/prashant/Documents/image/mainjava.jpg");
    fs=new FileInputStream(f);
	*/
	// validate user
	public static boolean validate(String username, String password) {
		
		try {
			connect = DBConnect_Painting.getConnection();
			statement = connect.createStatement();
			
			String sql = "select * from artist where username='"+username+"' and password='"+password+"'";
			
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
	
	
	// GET SESSION USERNAME --> CUSTOMER
	public static String getUserName(int userID) {
		Connection con;
		PreparedStatement pst;
		String UIDConverted = Integer.toString(userID);
		ResultSet rs;
		
		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("SELECT full_name FROM registered_customer WHERE customer_id = ?");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				cusUsername = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cusUsername;		
	}
	
	// GET SESSION USERNAME --> ARTIST
		public static String getArtistUsername(int artistUserID) {
			Connection con;
			PreparedStatement pst;
			String UIDConverted = Integer.toString(artistUserID);
			ResultSet rs;
			
			try {
				con = DatabaseUtilizer.utilizeConnection();
				pst = con.prepareStatement("SELECT name FROM artist WHERE artist_id = ?");
				pst.setString(1, UIDConverted);
				rs = pst.executeQuery();
				
				while(rs.next()) {
					artistUsername = rs.getString(1);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return artistUsername;		
		}
	
	
	
	// INSERT
	public static boolean insertPainting (String title, String description, String price, String drawn_date, String category,
			String weight, String length, String width, String image_url, String material, String frame, int artistUserID) {
		
		isSuccess = false;
		
		
		try {
			
			connect = DBConnect_Painting.getConnection();
			statement = connect.createStatement();
			    		
    		String sql = "insert into painting (title, description, price, drawn_date ,category ,weight, length, width, image_url ,material, frame, a_artist_id) values('"+title+"', '"+description+"', '"+price+"', '"+drawn_date+"','"+category+"' ,'"+weight+"', '"+length+"', '"+width+"', '"+image_url+"' ,'"+material+"', '"+frame+"', '"+artistUserID+"' )";
    					
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
	
	
	// 	RETRIEVE
	
	public static List<Painting> displayPaintingList(int artistUserID){
		String UIDConverted = Integer.toString(artistUserID);
		System.out.println("User ID in DB util: " + UIDConverted);
		PreparedStatement pst = null;
		ResultSet resultSet = null;
		Connection con;
		ArrayList<Painting> painting = new ArrayList<>();
		
		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("SELECT * FROM painting p, artist a WHERE p.a_artist_id = a.artist_id AND a.artist_id=?");
			pst.setString(1, UIDConverted);
			resultSet = pst.executeQuery();
			
			while(resultSet.next()) {
    			
    			int paintingID = resultSet.getInt(1);
    			System.out.println("Retrieved Painting ID: " + paintingID);
    			String title = resultSet.getString(2);
    			String description = resultSet.getString(3);
    			String price = resultSet.getString(4);
    			Date drawn_date = resultSet.getDate(5);
    			String category = resultSet.getString(6);
    			double weight = resultSet.getDouble(7);
    			double length = resultSet.getDouble(8);
    			double width = resultSet.getDouble(9);
    			String image_url = resultSet.getString(10);
    			String material = resultSet.getString(11);
    			boolean in_stock = resultSet.getBoolean(12);
    			String frame = resultSet.getString(13);
    			int a_artist_id = resultSet.getInt(14);
    			int c_cart_id = resultSet.getInt(15);
    			
    			Painting objectPaint = new Painting(paintingID,  title,  description,  price,  drawn_date,  category,  weight,  length,  width,  image_url,  material,  in_stock,  frame, a_artist_id, c_cart_id);
    			painting.add(objectPaint);
    			
    		} // end of While
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return painting;
	} // displayPaintingList end
	
	
	// 	UPDATE
	
	// Pass the variables in the Servlet as Parameters here
	public static boolean updatePainting (String painting_id, String title, String description, String price, String drawn_date, String category, String weight, String length, String width, String image_url, String material, String in_stock, String frame) {
    	
    	try {
    		
    		connect = DBConnect_Painting.getConnection();
    		statement = connect.createStatement();
    		    		
    		String sql = "UPDATE painting SET title='"+title+"' , description='"+description+"' , price='"+price+"' , drawn_date='"+drawn_date+"', category= '"+category+"', weight='"+weight+"' , length='"+length+"' , width='"+width+"' , image_url= '"+image_url+"', material='"+material+"' , in_stock= 1, frame='"+frame+"'"
    				+ " WHERE painting_id='"+painting_id+"'"; 
    		
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
	
	
	// DELETE
	public static boolean deletePainting(String painting_id) {
    	
    	int convId = Integer.parseInt(painting_id);
    	
    	try {
    		
    		connect = DBConnect_Painting.getConnection();
    		statement = connect.createStatement();
    		
    		String sql = "delete from painting where painting_id='"+convId+"'";
    		
    		int resultSet = statement.executeUpdate(sql);
    		
    		if (resultSet > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
} // end of class
