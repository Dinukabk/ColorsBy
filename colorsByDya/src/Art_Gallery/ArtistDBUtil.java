package Art_Gallery;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

public class ArtistDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Artist> validate(String username, String password){
		
		ArrayList<Artist> art = new ArrayList<>();
		
		// crate database connection
		
		
		//validate
		
		try {
			
		con = DBConnect.getConnection();
		stmt = con.createStatement();
			
			String sql = "select * from artist where username = '"+username+"' and password = '"+password+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				int artist_id = rs.getInt(1);
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
				int a_admin_id = rs.getInt(14);
				
				Artist a = new Artist(artist_id, name, phone_no, email, description, add_line_01, add_line_02, postal_code, province, city, country, username1, password1, a_admin_id );
				
				art.add(a);
				
				
				
				
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		
		return art;
	}
	
	
	public static boolean insertartist(String name, String phone_no, String email, String description, String add_line_01, String add_line_02, String postal_code, String province, String city, String country, String username,String password) {
		
		boolean isSuccess = false;
		
		// crate database connection
		
				
				
				try {
					
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
					
					String sql = "insert into artist values ( '"+name+"', '"+phone_no+"', '"+email+"', '"+description+"', '"+add_line_01+"', '"+add_line_02+"', '"+postal_code+"', '"+province+"', '"+city+"', '"+country+"', '"+username+"', '"+password+"' )";
					
					int rs = stmt.executeUpdate(sql);
					
					if(rs >0) {
						isSuccess = true;
					}else {
						isSuccess = false;
					}
					
					
					
				}
				catch(Exception e) {
					e.printStackTrace();
				}
		
		
		return isSuccess;
	}
	
	public static boolean updateartist(String artist_id, String name, String phone_no, String email, String description, String add_line_01,
		String add_line_02, String postal_code, String province, String city, String country, String username,
		String password, String a_admin_id) {
		
		boolean isSuccess = false;
		
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "update artist set name = '"+name+"',phone_no='"+phone_no+"',email = '"+email+"', description='"+description+"', add_line_01='"+add_line_01+"',add_line_02='"+add_line_02+"',postal_code='"+postal_code+"',province='"+province+"',city='"+city+"',country='"+country+"',username='"+username+"',password='"+password+"'"+"where id='"+artist_id+"'";
						
					int rs = stmt.executeUpdate(sql);
					
					if(rs>0) {
						isSuccess = true;
					}
					else {
						isSuccess=false;
					}
				
			}
			catch(Exception e) {
				
				e.printStackTrace();
				
			}
		
		
		
		
		return isSuccess;
		
	}
		
	}

	


