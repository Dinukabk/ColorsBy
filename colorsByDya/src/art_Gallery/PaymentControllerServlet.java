// JSP's data passes to this controller 

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

@WebServlet("/PaymentControllerServlet")
public class PaymentControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null) { // If a session exists
			int userID = (int) session.getAttribute("userID");
			
			// Getting payment total...
			int pTotal = PaymentsDatabaseUtil.getCartTotal(userID);
			Boolean cardAvailability;
			System.out.println("On payment servlet...");
			System.out.println("Payment total: " + pTotal);
			
			request.setAttribute("payTotal", pTotal);
			System.out.println("Payment total in servletRequest: " + request.getAttribute("payTotal"));
			
			// Checking if a payment card available on user profile
			cardAvailability = PaymentsDatabaseUtil.checkCard(userID);
			// List<Payment> paymentList = PaymentsDatabaseUtil.checkCardList(userID);
			// Payment userName = paymentList.get(1);
			String userName = PaymentsDatabaseUtil.getUserName(userID); 
			
			System.out.println("Card availability in payment servlet: " + cardAvailability);
			if (cardAvailability == true) {
				request.setAttribute("userName", userName);
				RequestDispatcher RD = request.getRequestDispatcher("./Payments/paymentWithCard.jsp");
				RD.forward(request, response);
			} else {
				request.setAttribute("userName", userName);
				RequestDispatcher RD = request.getRequestDispatcher("./Payments/payment.jsp");
				RD.forward(request, response);
			}
		} else { // If session doesn't exist
			RequestDispatcher RD = request.getRequestDispatcher("login_01.jsp");
			RD.forward(request, response);
		}
	}

}
