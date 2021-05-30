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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("search");

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/colorbydiyaa?autoReconnect=true&useSSL=false", "root", "root");
			pst = con.prepareStatement(
					"select full_name, add_line_01, add_line_02, postal_code, province, city, country from delivery where province = ?");
			pst.setString(1, name);
			rs = pst.executeQuery();
			
			out.println("<style>");
			out.println("tr {");
			out.println("color:black;");
			out.println("background-color:white;");
			out.println("border: 1px solid black;");
			out.println("}");
			out.println("</style>");

			out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x\" crossorigin=\"anonymous\">");
			out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4\" crossorigin=\"anonymous\"></script>");
			out.println("<br>");
			out.println("<br>");
			out.println("<br>");
			out.println("<br>");
			
			out.println("<style>");
			out.println("body {");
			out.println("background-image: url('./DelivryImages/9aa.jpg');");
			out.println("background-image:./DelivryImages/9a.jpg;");
			out.println("background-repeat: no-repeat;");
			out.println("background-size: cover;");
			out.println("}");
			out.println("</style>");
			
			out.println("<center> <h2> Results of Relavent Province </h2></center>");
			out.println("<br>");
			
			out.println("<center>");
			out.println("<table width=70% >");
			out.println("<tr> <td colspan=4>");
			out.println("</td></tr>");
			out.println("<tr>");
			out.println("<th> Customer Name </th>");
			out.println("<th> Address LineOne </th>");
			out.println("<th> Address LineTwo </th>");
			out.println("<th> PostelCode </th>");
			out.println("<th> Province </th>");
			out.println("<th> City </th>");
			out.println("<th> Country </th>");
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
			out.println("</center>");
			
			
			
			
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
