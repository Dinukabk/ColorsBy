package art_Gallery;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

@WebServlet("/DeliveryDeleteServelet")
public class DeliveryDeleteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	
	int fullName = Integer.parseInt(request.getParameter("P_id"));
	System.out.println(fullName);
	try {
	Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/colorbydiyaa?autoReconnect=true&useSSL=false", "root", "root");
	PreparedStatement pst = con.prepareStatement(
			"delete from delivery where p_payment_id = ?");
	pst.setInt(1, fullName);
    pst.executeUpdate();
    RequestDispatcher dis2 = request.getRequestDispatcher("DeliveryHomaPage.jsp");
	dis2.forward(request, response);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
		
	}
		
}
