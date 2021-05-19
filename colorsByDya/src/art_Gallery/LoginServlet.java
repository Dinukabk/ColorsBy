package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		// HttpSession session = request.getSession(false);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		// Getting the user_name and password in the login page
		String n = request.getParameter("email");
		String p = request.getParameter("password");
		
		// The session
		HttpSession session = request.getSession();
		System.out.println("Test Print 02");
		if (session != null) {
			System.out.println("Test Print...");
			// session.setAttribute("l_id", n);
			int login = LoginDao.validate(n, p);
			if (login > 0) {
				List<CustomerNew> cusDeatils = CustomerDbUtill.validate(n, p);
				request.setAttribute("cusDeatils", cusDeatils);
				session.setAttribute("userID", login);
				RequestDispatcher RD = request.getRequestDispatcher("userDashboard.jsp");
				RD.forward(request, response);
			} else {
				RequestDispatcher RD = request.getRequestDispatcher("login_01.jsp");
				RD.forward(request, response);
			}
		}
	}
}