package art_Gallery;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NegoAcceptServlet")
public class NegoAcceptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		  String price_req_id = request.getParameter("price_req_id");
		  
		  boolean isTrue;
		  
		  isTrue = RequestDBUtil.updateNegoStatusAccept(price_req_id);
		  
		  if(isTrue == true) {
		  
		  RequestDispatcher dis = request.getRequestDispatcher("requestSuccess.jsp");
		  dis.forward(request, response); 
		  } 
		  else {
		  
		  RequestDispatcher dis = request.getRequestDispatcher("requestUnsuccess.jsp");
		  dis.forward(request, response); 
		  }
		  
		}
		 
		 /*try
	        {  
	            Class.forName("oracle.jdbc.driver.OracleDriver");  
	            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/colorbydiyaa","root","root"); 
	            String price_req_id = request.getParameter("price_req_id");
	            Statement stmt=con.createStatement();  
	            stmt.executeUpdate("UPDATE negotiate_price SET accepted=1 where price_req_id='"+price_req_id+"'");
	            System.out.println("<script type=\"text/javascript\">");
	            System.out.println("alert('your submission has been successfully approved');");
	            System.out.println("location='NegotiateList.jsp';");
	            System.out.println("</script>"); 
	            //String sql = "UPDATE APPROVAL SET STATUS='approved' WHERE EMAIL='"+EMAIL+"'";
	            //stmt.executeUpdate(sql);
	            //out.close();
	            //stmt.executeUpdate("UPDATE APPROVAL SET STATUS='approved' WHERE EMAIL='e'");                  
	        }*/
	        catch (Exception e2) 
	        {
	        	e2.printStackTrace();
	        }
	}

}
