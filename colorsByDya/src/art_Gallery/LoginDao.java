package art_Gallery;

import java.sql.*;

// Login validation function
public class LoginDao {
	private static int userID;
	
	public static int validate(String email, String pass) {        
        // boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String userName;

        try {
            // DB Connection
        	conn = DatabaseUtilizer.utilizeConnection();
        	pst = conn.prepareStatement("SELECT customer_id, full_name FROM registered_customer WHERE username=? and password=? ");
            pst.setString(1, email);
            pst.setString(2, pass);         
            rs = pst.executeQuery();
            
            // Final output
            // status = rs.next();
            
            // Assigning userID to the session
            while (rs.next()) {
            	userID = rs.getInt(1);
            	userName = rs.getString(2);
            	CustomerSession CS = new CustomerSession(userName);
            	return userID;
            }
            
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
		return userID;
    }
}
