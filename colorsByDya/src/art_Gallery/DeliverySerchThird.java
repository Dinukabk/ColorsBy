package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeliverySerchThird")
public class DeliverySerchThird extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	Connection con;
	PreparedStatement pst;
	ResultSet rs;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("search");
		 
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/colorbydiyaa?autoReconnect=true&useSSL=false", "root", "root");
			pst = con.prepareStatement(
					"select full_name, add_line_01, add_line_02, postal_code, province, city, country from delivery where province = ?");
			pst.setString(1, name);
	       rs = pst.executeQuery();
	       out.println("<style>");     
	       out.println("tr {");       
	       out.println("color:blue;");
	       out.println("background-color:yellow;");
	       out.println("border: 1px solid black;");
	       out.println("}");        
	       out.println("</style>");

			out.println("<table width=60% border=1>");
			out.println("<tr> <td colspan=4>");
			out.println("<center> <h2> Result of serch page </h2></center>");
			out.println("</td></tr>");
			out.println("<tr>");
			out.println("<th> emp id </th>");
			out.println("<th> emp name </th>");
			out.println("<th> emp title </th>");
			out.println("<th> Address </th>");
			out.println("<th> Address </th>");
			out.println("<th> Address </th>");
			out.println("<th> Address </th>");
			out.println("</tr>");

			
			while (rs.next()) {

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
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	
	
		
	}

}
