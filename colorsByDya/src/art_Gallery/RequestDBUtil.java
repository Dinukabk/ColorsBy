package art_Gallery;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class RequestDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Request> validate(String userName, String pass){
		
		ArrayList<Request> req = new ArrayList<>();
		
		try {
			
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from special_request sr, artist a where a.name='"+userName+"' and a.pass='"+pass+"' and sr.artist_name=a.artist_id";
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
				
				Request r = new Request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name);
				req.add(r);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return req;
		
	}
	
	//////////////////customer login
       public static List<Request> validateCus(String userName, String pass){
		
		ArrayList<Request> req = new ArrayList<>();
		
		//validate instead of session
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from special_request sr, registered_customer rc where rc.username='"+userName+"' and rc.password='"+pass+"' and rc.customer_id=sr.c_customer_id";
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
				
				Request r = new Request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name);
				req.add(r);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return req;
		
	}
	
	
	public static boolean insertSRequest(String name,String phone,String email,String message,String photograph,
			String add_line_01,String add_line_02,String postal_code,String province,String city,String country) {
		
		boolean isSuccess = false;
		
		try {
			
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "insert into special_request values(0,'"+name+"','"+phone+"','"+email+"','"+message+"','"+photograph+"','"+add_line_01+"','"+add_line_02+"','"+postal_code+"','"+province+"','"+city+"','"+country+"',1,3)";
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
	
	public static boolean updateRequest(String request_id,String name,String phone,String email,String message,String photograph,
			String add_line_01,String add_line_02,String postal_code,String province,String city,String country,String c_customer_id,String artist_name) {
		
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
				
				Request r = new Request(request_id,name,phone,email,message,photograph,add_line_01,add_line_02,postal_code,province,city,country,c_customer_id,artist_name);
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
	
	public static boolean insertNegotiate(String message) {
		
		boolean isSuccess = false;
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "insert into negotiate_price values(0,'"+message+"',1,1,0)";
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
    public static List<Negotiate> negotiateListValidate(String userName, String pass){
		
		ArrayList<Negotiate> req = new ArrayList<>();
		
		//validate instead of session
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from negotiate_price np, artist a, painting p where a.name='"+userName+"' and a.pass='"+pass+"' and np.p_painting_id=p.painting_id and p.a_artist_id=a.artist_id";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {

				int price_req_id = rs.getInt(1);
				String message = rs.getString(2);
				int c_customer_id = rs.getInt(3);
				int p_painting_id = rs.getInt(4);
				boolean accepted = rs.getBoolean(5);
				
				Negotiate n = new Negotiate(price_req_id,message,c_customer_id,p_painting_id,accepted);
				req.add(n);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return req;
		
	}
    
    public static boolean updateNegoStatusAccept() {
		
		try {
			con = RequestDBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "update negotiate_price set accepted=1";
			
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
    
    public static boolean updateNegoStatusReject(String Id) {
	
	int convertedID = Integer.parseInt(Id);
		
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
}
