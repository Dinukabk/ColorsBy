package art_Gallery;

import java.io.IOException;

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
		
		if (saveCard != null) { // If save card checkBox is ticked...
			Boolean querySuccess = PaymentsDatabaseUtil.addPaymentCard(userID, cardNumber, nameOnCard, expDate, CVV, saveCard);
			if (querySuccess == true) { // If query executed correctly
				request.setAttribute("cardNumber", cardNumber);
				request.setAttribute("nameOnCard", nameOnCard);
				request.setAttribute("expDate", expDate);
				request.setAttribute("CVV", CVV);
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
			request.setAttribute("cardNumber", cardNumber);
			request.setAttribute("nameOnCard", nameOnCard);
			request.setAttribute("expDate", expDate);
			request.setAttribute("CVV", CVV);
			RequestDispatcher RD = request.getRequestDispatcher("./Payments/paymentWithCard.jsp");
			RD.forward(request, response);
		}
	}
}
