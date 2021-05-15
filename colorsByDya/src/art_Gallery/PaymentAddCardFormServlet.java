package art_Gallery;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PaymentAddCardFormServlet")
public class PaymentAddCardFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cardNumber = request.getParameter("cardNumber");
		String nameOnCard = request.getParameter("nameOnCard");
		String expDate = request.getParameter("expDate");
		String CVV = request.getParameter("cvv");
		String saveCard = request.getParameter("saveCard");
		HttpSession session = request.getSession(false);
		int userID = (int) session.getAttribute("userID");
		
		// System.out.println("Credit card number: " + cardNumber);
		// System.out.println("Name on credit card: " + nameOnCard);
		// System.out.println("Expiration date: " + expDate);
		// System.out.println("CVV Number: " + CVV);
		// System.out.println("Check box: " + saveCard);
		
		if (saveCard != null) { // If save card checkBox is ticked...
			int querySuccess = PaymentsDatabaseUtil.addPaymentCard(userID, cardNumber, nameOnCard, expDate, CVV, saveCard);
			if (querySuccess > 0) { // If query executed correctly
				request.setAttribute("cardNumber", Integer.parseInt(cardNumber));
				request.setAttribute("nameOnCard", nameOnCard);
				request.setAttribute("expDate", Date.valueOf(expDate));
				request.setAttribute("CVV", Integer.parseInt(CVV));
				RequestDispatcher RD = request.getRequestDispatcher("./Payments/paymentWithCard.jsp");
				RD.forward(request, response);
			} else { // Display error message if query not successful...
				String error = "Error!";
				request.setAttribute("cardNumber", error);
				request.setAttribute("nameOnCard", error);
				request.setAttribute("expDate", error);
				request.setAttribute("CVV", error);
				RequestDispatcher RD = request.getRequestDispatcher("./Payments/paymentWithCard.jsp");
				RD.forward(request, response);
			}			
		} else { // If save card checkBox is not ticked
			request.setAttribute("cardNumber", Integer.parseInt(cardNumber));
			request.setAttribute("nameOnCard", nameOnCard);
			request.setAttribute("expDate", Date.valueOf(expDate));
			request.setAttribute("CVV", Integer.parseInt(CVV));
			RequestDispatcher RD = request.getRequestDispatcher("./Payments/paymentWithCard.jsp");
			RD.forward(request, response);
		}
	}
}
