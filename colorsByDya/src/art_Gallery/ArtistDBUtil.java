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
	
	public static List<Artist>validate(String userName,String Password){
		ArrayList<Artist>art = new ArrayList<>();
		
		// validate
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from artist where username= '"+userName+"' and password= '"+Password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int artist_id = rs.getInt(1);
				String name = rs.getString(2);
				String phone_no = rs.getString(3);
				String email = rs.getString(4);
				String description = rs.getString(5);
				String add_line_01 = rs.getString(6);
				String add_line_02 = rs.getString(7);
				String postal_code = rs.getString(8);
				String province = rs.getString(9);
				String city = rs.getString(10);
				String country = rs.getString(11);
				String username = rs.getString(12);
				String password = rs.getString(13);
				String a_admin_id = rs.getString(14);
				
				
				Artist a = new Artist(artist_id,name,phone_no,email,description,add_line_01,add_line_02,postal_code,province,city,country,username,password,a_admin_id);
				art.add(a);
				
				
				
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return art;
	}
	
	// Artist details insert
	
	public static boolean insertartist(String name, String phone_no,String email,String description,String add_line_01,String add_line_02,String postal_code,String province,String city,String country,String username,String password) {
boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "INSERT INTO artist(name,phone_no,email,description,add_line_01,add_line_02,postal_code,province,city,country,username,password) VALUES('"+name+"','"+phone_no+"','"+email+"','"+description+"','"+add_line_01+"','"+add_line_02+"','"+postal_code+"','"+province+"','"+city+"','"+country+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
		
	

	
	// Artist Update 
	
	public static boolean UpdateArtist(String name, String phone_no,String email,String description,String add_line_01,String add_line_02,String postal_code,String province,String city,String country,String username,String password,String artist_id) {
		
		try {
			con = DBConnect.getConnection();
			stmt =  con.createStatement();
			String sql = "UPDATE artist SET name ='"+name+"',   phone_no = '"+phone_no+"', email = '"+email+"',description = '"+description+"',add_line_01 = '"+add_line_01+"',add_line_02 = '"+add_line_02+"',postal_code= '"+postal_code+"',province='"+province+"',city= '"+city+"',country='"+country+"',username= '"+username+"',password= '"+password+"'  "  +   "WHERE artist_id = '"+artist_id+"'";
			int rs = stmt.executeUpdate(sql);
			if(rs> 0) {
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();

	}
		return isSuccess;
		
	}
	
	// Details retrieve
	public static List<Artist> getArtistDetails(String id){
		int convertedID = Integer.parseInt(id);
		ArrayList<Artist>art = new ArrayList<>();
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM artist WHERE artist_id= '"+convertedID+"' ";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int artist_id = rs.getInt(1);
				String name = rs.getString(2);
				String phone_no = rs.getString(3);
				String email = rs.getString(4);
				String description = rs.getString(5);
				String add_line_01 = rs.getString(6);
				String add_line_02 = rs.getString(7);
				String postal_code = rs.getString(8);
				String province = rs.getString(9);
				String city = rs.getString(10);
				String country = rs.getString(11);
				
				Artist a = new Artist(artist_id,name,phone_no,email,description,add_line_01,add_line_02,postal_code,province,city,country);
				art.add(a);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return art;
	}
	
	//  Delete Customer 
	public static boolean deleteArtist(String id) {
		int convID = Integer.parseInt(id);
		

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "DELETE FROM artist  WHERE artist_id='"+convID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.getStackTrace();
		}
		
		
		
		return isSuccess;
		
	}
}


	


