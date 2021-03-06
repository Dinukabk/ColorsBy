package art_Gallery;

import java.io.File;
import java.io.FileInputStream;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class RequestDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	private static String cusUsername;
	private static String artistUsername;
	
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
	
	///request artist login
	public static List<Request> validate(int artistUserID) {
		String UIDConverted = Integer.toString(artistUserID);
		PreparedStatement pst = null;
		ResultSet rs = null;
		Connection con;
		
		ArrayList<Request> req = new ArrayList<>();
		
		try {
			con = DatabaseUtilizer.utilizeConnection();
			pst = con.prepareStatement("SELECT * FROM special_request sr, artist a WHERE sr.artist_name=a.artist_id AND a.artist_id=?");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			// stmt = con.createStatement();
			// String sql = "select * from special_request sr, artist a where a.username='"+userName+"' and a.password='"+pass+"' and sr.artist_name=a.artist_id";
			// rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int request_id = rs.getInt(1);
				String name = rs.getString(2);
				int phone = rs.getInt(3);
				String email = rs.getString(4);
				String message = rs.getString(5);
				String photograph = rs.getString(6);
				String add_line_01 = rs.getString(7);
				String add_line_02 = rs.getString(8);
			    int postal_code = rs.getInt(9);
				String province = rs.getString(10);
				String city = rs.getString(11);
				String country = rs.getString(12);
				int c_customer_id = rs.getInt(13);
				int artist_name = rs.getInt(14);
				boolean accept = rs.getBoolean(15);
				
				Request r = new Request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name,accept);
				req.add(r);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return req;
		
	}
	
	//////////////////customer login
       public static List<Request> validateCus(int userID){
		
		ArrayList<Request> req = new ArrayList<>();
		PreparedStatement pst;
		String UIDConverted = Integer.toString(userID);
		//String imgConverted = blob.toString(userID);
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			// String sql = "SELECT * FROM special_request sr, registered_customer rc WHERE rc.customer_id='"+userID+"' and rc.customer_id=sr.c_customer_id";
			System.out.println("User ID in RequestDBUtil" + UIDConverted);
			pst = con.prepareStatement("SELECT * FROM special_request sr, registered_customer rc WHERE rc.customer_id=? and rc.customer_id=sr.c_customer_id");
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			
			//pst.setBlob(6, photograph);
			// rs = stmt.executeQuery(sql);
			System.out.println("After query execution...");
			
			while(rs.next()) {
				int request_id = rs.getInt(1);
				String name = rs.getString(2);
				int phone = rs.getInt(3);
				String email = rs.getString(4);
				String message = rs.getString(5);
				String photograph = rs.getString(6);
				String add_line_01 = rs.getString(7);
				String add_line_02 = rs.getString(8);
			    int postal_code = rs.getInt(9);
				String province = rs.getString(10);
				String city = rs.getString(11);
				String country = rs.getString(12);
				int c_customer_id = rs.getInt(13);
				int artist_name = rs.getInt(14);
				boolean accept = rs.getBoolean(15);
				
				Request r = new Request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name,accept);
				req.add(r);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return req;
		
	}
	
	//insert request
	public static boolean insertSRequest(String name,String phone,String email,String message,String photograph,
			String add_line_01,String add_line_02,String postal_code,String province,String city,String country,int userID,String artist_name_list) {
		
		int artName=3;
		System.out.println(artist_name_list);
		boolean isSuccess = false;
		//String UIDConverted = Integer.toString(userID);
		//int convertedID = Integer.parseInt(userID);
		int convertedPhone = Integer.parseInt(phone);
		int convertedPostalCode = Integer.parseInt(postal_code);
		
		try {
			
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			
			
			  try {
				  System.out.println("inside the try"+artist_name_list);
				  //artist name  
				  String sql_1 ="select * from artist a where a.name='"+artist_name_list+"'";
				  //get table data 
				  ResultSet rs1 = stmt.executeQuery(sql_1);
				  System.out.println("no issue ");
				  
				  if(rs1.next()){
					  int artName_new = rs1.getInt("artist_id"); 
					  System.out.println("try "+artName_new); 
					  }//end of if next 
				  } catch(Exception e) { 
					  e.printStackTrace(); 
					  
				  }
			 
			
			String sql =
					 "insert into special_request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name) "
					 
					 + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					 

						/*
						 * String sql
						 * ="insert into special_request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name) "
						 * + "values(0,'"+name+"','"+phone+"','"+email+"','"+message+"','"+photograph+
						 * "','"+add_line_01+"','"+add_line_02+"','"+postal_code+"','"+province+"','"+
						 * city+"','"+country+"',1,3)";
						 */
					 
					//create the mysql insert preparedstatement
					PreparedStatement preparedStmt = con.prepareStatement(sql);
					
					//URL url=getClass().getResource("/music/Whitewoods - College Kill Dream.mp3");
				    //System.out.println(url.toString());
					///FileInputStream fis = null;
				    //String fileName = "\"C:/apache-tomcat-6.0.16/\r\n" + "  webapps/example/\"+\"images\\"+photograph;
					
					//take video file from given path so we use FileInputStream
					//fis = new FileInputStream(new File(fileName));
					
					
					 preparedStmt.setInt (1, 0);
					 preparedStmt.setString (2, name);
					 preparedStmt.setInt (3, convertedPhone); 
					 preparedStmt.setString (4, email);
					 preparedStmt.setString (5, message); 
					 preparedStmt.setString (6, photograph);
					 preparedStmt.setString (7, add_line_01); 
					 preparedStmt.setString (8,add_line_02); 
					 preparedStmt.setInt (9, convertedPostalCode); 
					 preparedStmt.setString (10, province); 
					 preparedStmt.setString (11, city); 
					 preparedStmt.setString (12,country); 
					 preparedStmt.setInt (13, userID); 
					 preparedStmt.setInt (14, artName);
					 
					 int n = preparedStmt.executeUpdate();
						/*
						 * if(n>0) {
						 * response.getWriter().println("<center>successfully uploaded</center>");
						 * 
						 * }
						 */
					  
						/*
						 * try { //PreparedStatement ps =
						 * con.prepareStatement("insert into special_request(file) values(?)");
						 * //ps.setBinaryStream(3, fis); //inser data to the database int n =
						 * ps.executeUpdate(); if(n>0) {
						 * response.getWriter().println("<center>successfully uploaded</center>");
						 * 
						 * } } catch(Exception e) { System.out.println(e); }
						 */
					 
					
					/* boolean rs = preparedStmt.execute(); */
					//int rs = stmt.executeUpdate(sql);
				
					
					if(n > 0) {
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
	
	//update request
	public static boolean updateRequest(String request_id,String name,String phone,String email,String message,String photograph,
			String add_line_01,String add_line_02,String postal_code,String province,String city,String country,String c_customer_id,String artist_name,String accept) {
		
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "update special_request set name='"+name+"',phone='"+phone+"',email='"+email+"',message='"+message+"',photograph='"+photograph+"',add_line_01='"+add_line_01+"',add_line_02='"+add_line_02+"',postal_code='"+postal_code+"',province='"+province+"',city='"+city+"',country='"+country+"' where request_id='"+request_id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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
	
	public static List<Request> getRequestDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Request> req = new ArrayList<>();
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from special_request where request_id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int request_id = rs.getInt(1);
				String name = rs.getString(2);
				int phone = rs.getInt(3);
				String email = rs.getString(4);
				String message = rs.getString(5);
				String photograph = rs.getString(6);
				String add_line_01 = rs.getString(7);
				String add_line_02 = rs.getString(8);
			    int postal_code = rs.getInt(9);
				String province = rs.getString(10);
				String city = rs.getString(11);
				String country = rs.getString(12);
				int c_customer_id = rs.getInt(13);
				int artist_name = rs.getInt(14);
				boolean accept = rs.getBoolean(15);
				
				Request r = new Request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name,accept);
				req.add(r);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return req;
	}
	
	public static boolean deleteRequest(String Id) {
		
		int convertedID = Integer.parseInt(Id);
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "delete from special_request where request_id='"+convertedID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
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
	
	public static boolean insertNegotiate(String message,int userID, int painting_id) {
		
		boolean isSuccess = false;
		String paintConverted = Integer.toString(painting_id);
		String idConverted = Integer.toString(userID);
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "insert into negotiate_price values(0,'"+message+"','"+idConverted+"','"+paintConverted+"',0)";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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
	
	/////Artist login for negotiate price
    public static List<NegoAll> negotiateListValidate(int artistUserID){
    	
    	String UIDConverted = Integer.toString(artistUserID);
		PreparedStatement pst = null;
		ResultSet rs = null;
		Connection con;
		
		ArrayList<NegoAll> req = new ArrayList<>();
		
		//validate instead of session
		
		try {
			con = RequestDBConnector.getConnection();
			// stmt = con.createStatement();
			pst = con.prepareStatement("SELECT np.price_req_id,rc.full_name,rc.phone_no,p.title,p.image_url,np.message "
					+ "FROM negotiate_price np, artist a, painting p, registered_customer rc "
					+ "WHERE np.p_painting_id=p.painting_id and p.a_artist_id=a.artist_id and p.a_artist_id=? "
					+ "AND np.c_customer_id=rc.customer_id");
			// String sql = "select rc.full_name,rc.phone_no,p.title,p.image_url,np.message from negotiate_price np, artist a, painting p, registered_customer rc where a.username='"+artistUserID+"' and np.p_painting_id=p.painting_id and p.a_artist_id=? and np.c_customer_id=rc.customer_id";
			// rs = stmt.executeQuery(sql);
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				
				int price_req_id = rs.getInt("price_req_id");
				String full_name = rs.getString("full_name");
				String phone_no = rs.getString("phone_no");
				String title = rs.getString("title");
				String image_url = rs.getString("image_url");
				String message = rs.getString("message");
				
				NegoAll n = new NegoAll(price_req_id,full_name,phone_no,title,image_url,message);
				req.add(n);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return req;
		
	}
    
    //paint retrieving for the negotiate List
	/*
	 * public static List<RequestCustomer> negoPaintValidate(String userName, String
	 * pass){
	 * 
	 * ArrayList<RequestCustomer> req = new ArrayList<>();
	 * 
	 * try { con = RequestDBConnector.getConnection(); stmt = con.createStatement();
	 * String sql = "select * from registered_customer rc"; } catch(Exception e) {
	 * e.printStackTrace(); }
	 * 
	 * return req; }
	 */
    
    public static boolean updateNegoStatusAccept(String price_req_id) {
    	
    	//PreparedStatement pst;
		//int UIDConverted = Integer.parseInt(ID);
    	//PreparedStatement pst;
		//int UIDConverted = String.tont(ID);
		//int UIDConverted = Integer.valueOf(price_req_id);
		int convertedID = Integer.parseInt(price_req_id);
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			//String sql = "update negotiate_price set accepted=1 where price_req_id='"+UIDConverted+"'";
			String sql = "update negotiate_price set accepted=1 where price_req_id='"+convertedID+"'";
			System.out.println("User ID in RequestDBUtil" + convertedID);
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs>0) {
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
    
    public static boolean updateNegoStatusReject() {
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "update negotiate_price set accepted=0";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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
    
    //accept Special request update
    public static boolean updateSpecialAccept(String request_id,String name,String phone,String email,String message,String photograph,
			String add_line_01,String add_line_02,String postal_code,String province,String city,String country) {
    	
    	try {
    		con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "update special_request set accept=1 where request_id='"+request_id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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
    
    //accept Negotiate Price update
    public static boolean updateNegoAccept(String price_req_id, String full_name, String phone_no, String title, String image_url, String message) {
    	
    	//int convertedID = Integer.parseInt(price_req_id);
    	
    	try {
    		con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "update negotiate_price set accepted=1 where price_req_id='"+price_req_id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
    //customer negotiate price list
     public static List<NegoAll> negotiateCustomerList(int userID){
    	
    	String UIDConverted = Integer.toString(userID);
		PreparedStatement pst = null;
		ResultSet rs = null;
		Connection con;
		
		ArrayList<NegoAll> req = new ArrayList<>();
		
		try {
			con = RequestDBConnector.getConnection();
			// stmt = con.createStatement();
			pst = con.prepareStatement("SELECT np.price_req_id,rc.full_name,rc.phone_no,p.title,p.image_url,np.message "
					+ "FROM negotiate_price np, artist a, painting p, registered_customer rc "
					+ "WHERE np.p_painting_id=p.painting_id and p.a_artist_id=a.artist_id "
					+ "AND np.c_customer_id=rc.customer_id AND np.accepted=1 AND np.c_customer_id=?");
			// String sql = "select rc.full_name,rc.phone_no,p.title,p.image_url,np.message from negotiate_price np, artist a, painting p, registered_customer rc where a.username='"+artistUserID+"' and np.p_painting_id=p.painting_id and p.a_artist_id=? and np.c_customer_id=rc.customer_id";
			// rs = stmt.executeQuery(sql);
			pst.setString(1, UIDConverted);
			rs = pst.executeQuery();
			
			while(rs.next()) {
				
				int price_req_id = rs.getInt("price_req_id");
				String full_name = rs.getString("full_name");
				String phone_no = rs.getString("phone_no");
				String title = rs.getString("title");
				String image_url = rs.getString("image_url");
				String message = rs.getString("message");
				
				NegoAll n = new NegoAll(price_req_id,full_name,phone_no,title,image_url,message);
				req.add(n);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return req;
		
	}
     
     //searching function
     public static List<Request> searchFunction(int artistUserID, String nameInput) {
 		String UIDConverted = Integer.toString(artistUserID);
 		PreparedStatement pst = null;
 		ResultSet rs = null;
 		Connection con;
 		
 		ArrayList<Request> req = new ArrayList<>();
 		
 		try {
 			con = DatabaseUtilizer.utilizeConnection();
 			pst = con.prepareStatement("SELECT * FROM special_request sr, artist a WHERE sr.artist_name=a.artist_id AND sr.name='"+nameInput+"' AND a.artist_id=?");
 			pst.setString(1, UIDConverted);
 			rs = pst.executeQuery();
 			// stmt = con.createStatement();
 			// String sql = "select * from special_request sr, artist a where a.username='"+userName+"' and a.password='"+pass+"' and sr.artist_name=a.artist_id";
 			// rs = stmt.executeQuery(sql);
 			
 			while(rs.next()) {
 				int request_id = rs.getInt(1);
 				String name = rs.getString(2);
 				int phone = rs.getInt(3);
 				String email = rs.getString(4);
 				String message = rs.getString(5);
 				String photograph = rs.getString(6);
 				String add_line_01 = rs.getString(7);
 				String add_line_02 = rs.getString(8);
 			    int postal_code = rs.getInt(9);
 				String province = rs.getString(10);
 				String city = rs.getString(11);
 				String country = rs.getString(12);
 				int c_customer_id = rs.getInt(13);
 				int artist_name = rs.getInt(14);
 				boolean accept = rs.getBoolean(15);
 				
 				Request r = new Request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name,accept);
 				req.add(r);
 			}
 			
 		}
 		catch(Exception e) {
 			e.printStackTrace();
 		}
 		
 		return req;
 		
 	}
     
}
