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
			String userName = PaymentsDatabaseUtil.getUserName(userID); 
			
			System.out.println("Card availability in payment servlet: " + cardAvailability);
			
			if (cardAvailability == true) {
				System.out.println("Trying to add card details to servlet");
				List<Payment> cardDetails = PaymentsDatabaseUtil.getCardDetails(userID);
				System.out.println("Card details added to the servlet...");
				
//				int cardNo = cardDetails.get(0).getCardNo();
//				String nameOnCard = cardDetails.get(1).getNameOnCard();
//				int expDate = cardDetails.get(2).getExpDate();
//				int cvv = cardDetails.get(3).getCvv();
//				System.out.println("Card no: " + cardNo);
//				System.out.println("Card name: " + nameOnCard);
//				System.out.println("Card exp: " + expDate);
//				System.out.println("Card cvv: " + cvv);
//				
				request.setAttribute("userName", userName);
				request.setAttribute("cardDetails", cardDetails);
//				request.setAttribute("cardNo", cardNo);
//				request.setAttribute("nameOnCard", nameOnCard);
//				request.setAttribute("expDate", expDate);
//				request.setAttribute("cvv", cvv);
				
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
