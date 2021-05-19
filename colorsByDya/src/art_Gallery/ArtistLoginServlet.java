package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ArtistLoginServlet")
public class ArtistLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		// Getting the user_name and password in the login page
		String n = request.getParameter("username");
		String p = request.getParameter("pass");

		// The session
		HttpSession session = request.getSession(false);

		if (session != null) {
			int login = LoginDao.validateArtist(n, p);
			if (login > 0) {
				session.setAttribute("artistUserID", login);
				RequestDispatcher RD = request.getRequestDispatcher("ArtistList.jsp");
				RD.forward(request, response);
			} else {
				RequestDispatcher RD = request.getRequestDispatcher("artistLogin.jsp");
				RD.forward(request, response);
			}
		}
	}

}
