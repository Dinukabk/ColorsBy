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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null) {
			int userID = (int) session.getAttribute("userID");

			// Getting payment total...
			int pTotal = PaymentsDatabaseUtil.getCartTotal(userID);
			boolean cardAvailability;
			System.out.println("On payment servlet...");
			System.out.println("Payment total: " + pTotal);
			
			request.setAttribute("payTotal", pTotal);
			System.out.println("Payment total in servletRequest: " + request.getAttribute("payTotal"));
			
			// Checking if a payment card available on user profile
			cardAvailability = PaymentsDatabaseUtil.checkCard(userID);
			System.out.println("Card availability in payment servlet: " + cardAvailability);
			if (cardAvailability == true) {
				RequestDispatcher RD = request.getRequestDispatcher("#");
				RD.forward(request, response);
			} else {
				RequestDispatcher RD = request.getRequestDispatcher("./Payments/payment.jsp");
				RD.forward(request, response);
			}
		}
	}

}
