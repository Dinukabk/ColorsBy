package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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

//		// Making the DB connection
//		Connection conn = null;
//		Statement st = null;
//		ResultSet rs = null;
//
//		String url = "jdbc:mysql://localhost:3306/";
//		String dbName = "colorbydiyaa";
//		String driver = "com.mysql.jdbc.Driver";
//		String userName = "root";
//		String password = "root";
//		String query = "select * from registered_customer";
//		
//		try { // Connecting to the database
//			Class.forName(driver).newInstance();
//			conn = DriverManager.getConnection(url + dbName, userName, password);
//			st = conn.createStatement();
//			rs = st.executeQuery(query);
//			rs.next();
//			String user = rs.getString(2);
//			
//			// Getting the user ID to assign a variable for user ID in the session 
//			int userID = Integer.parseInt(rs.getString(1));
//			System.out.println("ID From the database: " + userID);
//			
//			// Assigning the user ID into the session
//			session.setAttribute("userID", userID);
//			int sUserID = (int) session.getAttribute("userID");
//			System.out.println("ID assigned to the session: " + sUserID);
//			
//			System.out.println("Hello " + user);
//			
//			// Validating user from LoginDao.java
//			if (LoginDao.validate(n, p)) {
//				System.out.println("Logged in");
//				RequestDispatcher rd = request.getRequestDispatcher("userDashboard.jsp");
//				rd.forward(request, response);
//			} else {
//				System.out.println("Login Failed...");
//				out.print("<p style=\"color:red\">Sorry username or password error</p>");
//				RequestDispatcher rd = request.getRequestDispatcher("login_01.jsp");
//				rd.include(request, response);
//			}
//			out.close();
//		} catch (Exception e) {
//			System.out.println(e);
//		} finally {
//			if (conn != null) {
//				try {
//					conn.close();
//				} catch (SQLException e) {
//					e.printStackTrace();
//				}
//			}
//			if (st != null) {
//				try {
//					st.close();
//				} catch (SQLException e) {
//					e.printStackTrace();
//				}
//			}
//			if (rs != null) {
//				try {
//					rs.close();
//				} catch (SQLException e) {
//					e.printStackTrace();
//				}
//			}
//		}
	}
}