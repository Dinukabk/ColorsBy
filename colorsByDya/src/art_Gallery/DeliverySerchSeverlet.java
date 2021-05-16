package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.sun.tools.sjavac.comp.dependencies.PublicApiCollector;


@WebServlet("/DeliverySerchSeverlet")
public class DeliverySerchSeverlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
//    public DeliverySerchSeverlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
	
	
	int i;
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	@Override
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			i++;
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			String Province = request.getParameter("combo");
			
			Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jjdbc:mysql://localhost:3306/colorbydiyaa","root","root");
            pst = con.prepareStatement("select full_name, add_line_01, add_line_02, postal_code, province, city, country from delivery where = ?");
            pst.setString(1, Province);
            rs = pst.executeQuery(); 
			
			
			out.println("<table width=60% border=1>");
			out.println("<tr> <td colspan=4>");
			out.println("<center> <h2> Result of serch page </h2></center>");
			out.println("</td></tr>");
			out.println("<tr>");
			out.println("<th> emp id </th>");
			out.println("<th> emp name </th>");
			out.println("<th> emp title </th>");
			out.println("<th> Address </th>");
			out.println("</tr>");

			while(rs.next()) {
				
				out.println("<tr>");
				out.println("<td>" + rs.getString("full_name") + "</td>");
				out.println("<td>" + rs.getString("add_line_01") + "</td>");
				out.println("<td>" + rs.getString("add_line_02") + "</td>");
				out.println("<td>" + rs.getString("postal_code") + "</td>");
				out.println("<td>" + rs.getString("province") + "</td>");
				out.println("<td>" + rs.getString("city") + "</td>");
				out.println("<td>" + rs.getString("country") + "</td>");
				
				out.println("</tr>");
				
			}
			out.println("</table>");
			
		}
	    catch(Exception e) {
			throw new ServletException("login feiled", e);
		}
		
	}
		public void destory() {
			i=0;
		}
	

}
