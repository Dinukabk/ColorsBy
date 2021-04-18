// JSP's data passes to this controller 

package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PaymentControllerServlet")
public class PaymentControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null) {
			int userID = (int) session.getAttribute("userID");
			int pTotal = PaymentsDatabaseUtil.getCartTotal(userID);
			System.out.println("On payment servlet...");
			System.out.println("Payment total: " + pTotal);
			
			request.setAttribute("payTotal", pTotal);
			System.out.println("Payment total in servletRequest: " + request.getAttribute("payTotal"));
			RequestDispatcher RD = request.getRequestDispatcher("./payment.jsp");
			RD.forward(request, response);
		}
	}

}
