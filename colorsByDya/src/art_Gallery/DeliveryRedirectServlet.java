package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeliveryRedirectServlet")
public class DeliveryRedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		HttpSession session = request.getSession(false);
		int userID = (int) session.getAttribute("userID");

		if (userID > 0) {
			RequestDispatcher RD = request.getRequestDispatcher("DeliveryInsert.jsp");
			RD.forward(request, response);
		} else {
			System.out.println("No user detected...");
			RequestDispatcher RD = request.getRequestDispatcher("login_01.jsp");
			RD.forward(request, response);
		}
	}

}
