package Art_Gallery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

public class ArtistDBUtil {
	
	public static List<Artist> validate(String username, String password){
		
		ArrayList<Artist> artist = new ArrayList<>();
		
		// crate database connection
		
		String url = "jdbc:mysql://localhost:3306/colorbydiyaa";
		String user ="root";
		String pass = "root";
		
		//validate
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url , user , pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from artist where username = '"+username+"' and password = '"+password+"'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				int artist_id = rs.getInt(1);
				String name = rs.getNString(2);
				int phone_no = rs.getInt(3);
				String email = rs.getNString(4);
				String description = rs.getString(5);
				String add_line_01 = rs.getNString(6);
				String add_line_02 = rs.getString(7);
				int postal_code = rs.getInt(8);
				String province = rs.getString(9);
				String city = rs.getString(10);
				String country = rs.getString(11);
				String username1 = rs.getString(12);
				String password1 = rs.getString(13);
				int a_admin_id = rs.getInt(14);
				
				Artist a = new Artist(artist_id, name, phone_no, email, description, add_line_01, add_line_02, postal_code, province, city, country, username1, password1, a_admin_id );
				
				artist.add(a);
				
				
				
				
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		
		return artist;
	}

	

}
