package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		// Getting the user_name and password in the login page
		String n = request.getParameter("email");
		String p = request.getParameter("password");
		
		try {
		List<CustomerNew> cusDeatils = CustomerDbUtill.validate(n, p);
		request.setAttribute("cusDeatils", cusDeatils);
		}
		catch(Exception e){
			e.printStackTrace();
		}

		// The session
	HttpSession session = request.getSession(false);
	if (session != null) {
			// session.setAttribute("l_id", n);
			int login = LoginDao.validate(n, p);
			if (login > 0) {
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