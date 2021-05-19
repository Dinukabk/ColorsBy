package art_Gallery;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginRedirector")
public class LoginRedirector extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Checks the session
		HttpSession session = request.getSession();
		if (session.getAttribute("userID") == null) {
			System.out.println("No user ID Detected in session...");
			RequestDispatcher RD = request.getRequestDispatcher("login_01.jsp");
			RD.forward(request, response);
		} else {
			System.out.println("User ID detected in the session...");
			
			String userID = String.valueOf(session.getAttribute("userID"));
			List<CustomerNew> cusDeatils = CustomerDbUtill.getCustomerDetails(userID);
			request.setAttribute("cusDeatils", cusDeatils);
			
			RequestDispatcher RD = request.getRequestDispatcher("userDashboard.jsp");
			RD.forward(request, response);
		}
	}
}
