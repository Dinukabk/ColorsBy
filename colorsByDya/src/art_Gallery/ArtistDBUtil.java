package art_Gallery;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

public class ArtistDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate(String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from artist where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
public static List<Artist> getArtist(String username) {
		
		ArrayList<Artist> artist = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from artist where username='"+username+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				String artist_id = rs.getString(1);
				String name = rs.getNString(2);
				String phone_no = rs.getString(3);
				String email = rs.getNString(4);
				String description = rs.getString(5);
				String add_line_01 = rs.getNString(6);
				String add_line_02 = rs.getString(7);
				String postal_code = rs.getString(8);
				String province = rs.getString(9);
				String city = rs.getString(10);
				String country = rs.getString(11);
				String username1 = rs.getString(12);
				String password1 = rs.getString(13);
				String a_admin_id = rs.getString(14);
				
				Artist art = new Artist(artist_id, name, phone_no, email, description, add_line_01, add_line_02, postal_code, province, city, country, username1, password1, a_admin_id);
				artist.add(art);
			}
			
		} catch (Exception e) {
			
		}
		
		return artist;	
	}
    
    public static boolean insertartist(String name, String phone_no, String email, String description, String add_line_01, String add_line_02, String postal_code, String province, String city, String country, String username,String password) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into artist values ('"+name+"', '"+phone_no+"', '"+email+"', '"+description+"', '"+add_line_01+"', '"+add_line_02+"', '"+postal_code+"', '"+province+"', '"+city+"', '"+country+"', '"+username+"', '"+password+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }

    
    public static boolean updateartist(String name, String phone_no, String email, String description, String add_line_01, String add_line_02, String postal_code, String province, String city, String country, String username,String password) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update artist set name='"+name+"', '"+phone_no+"', '"+email+"', '"+description+"', '"+add_line_01+"', '"+add_line_02+"', '"+postal_code+"', '"+province+"', '"+city+"', '"+country+"', '"+username+"', '"+password+"'";
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
 
    public static List<Artist> getArtistDetails(String artist_id) {
    	
    	int convertedID = Integer.parseInt(artist_id);
    	
    	ArrayList<Artist> art = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from artist where artist_id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			artist_id = rs.getString(1);
				String name = rs.getNString(2);
				String phone_no = rs.getString(3);
				String email = rs.getNString(4);
				String description = rs.getString(5);
				String add_line_01 = rs.getNString(6);
				String add_line_02 = rs.getString(7);
				String postal_code = rs.getString(8);
				String province = rs.getString(9);
				String city = rs.getString(10);
				String country = rs.getString(11);
				String username1 = rs.getString(12);
				String password1 = rs.getString(13);
				String a_admin_id = rs.getString(14);
				
    		Artist a = new Artist(artist_id, name, phone_no, email, description, add_line_01, add_line_02, postal_code, province, city, country, username1, password1, a_admin_id);
    			art.add(a);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return art;	
    }
    
    
    public static boolean deleteArtist(String artist_id) {
    	
    	int convId = Integer.parseInt(artist_id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from artist where artist_id='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
