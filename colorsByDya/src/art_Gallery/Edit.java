package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Edit
 */
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out = response.getWriter(); 
		Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String url = "jdbc:mysql://localhost:3306/";
		String dbName = "colorbydiyaa";
	        String driver = "com.mysql.jdbc.Driver";
	        String userName = "root";
	        String password = "root";
	        
	        String ano = request.getParameter("field11");
	        String aname = request.getParameter("field22");
	        String name = request.getParameter("field33");
	        String phone = request.getParameter("field44");
	        String email= request.getParameter("field55");
	        String description= request.getParameter("field66");
	        String address01 = request.getParameter("field77");
	        String address02 = request.getParameter("field88");
	        HttpSession session = request.getSession();
	        String username = (String) session.getAttribute("login");
	        try {
	            Class.forName(driver).newInstance();
	            conn = DriverManager
	                    .getConnection(url + dbName, userName, password);

	            pst = conn.prepareStatement("update artist set  artist_id=?, name=?, phone_no=?, email=?, description=?, add_line_01=?, add_line_02=?, postal_code=?, province=?, city=?, country=?, username=?, password=?, a_admin_id=? where artist_id=?");
	            pst.setString(1, ano);
	            pst.setString(1, aname);
	            pst.setString(2, phone);
	            pst.setString(3, email);
	            pst.setString(4, description);
	            pst.setString(5, address01);
	            pst.setString(6, address02);
	            pst.setString(7, username);
	            System.out.println("ttttttt");
	            
	            pst.executeUpdate();
	            out.println("succeessful...");
	            System.out.println("ppp");
	            
	}
	        catch (Exception e) {
	     	   System.out.println(e.getMessage());
	        }

}
}
