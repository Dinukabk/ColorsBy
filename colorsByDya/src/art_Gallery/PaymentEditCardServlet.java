package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PaymentEditCardServlet")
public class PaymentEditCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		int userID = (int) session.getAttribute("userID");
		
		String cardNumber, nameOnCard, expDate, cvv;
		
		cardNumber = (String) request.getParameter("cardNo");
		nameOnCard = (String) request.getParameter("nameOnCard");
		expDate = (String) request.getParameter("expDate");
		cvv = (String) request.getParameter("cvv");
		
		System.out.println("Card Number: " + cardNumber);
		System.out.println("Name on card: " + nameOnCard);
		System.out.println("Expiry date: " + expDate);
		System.out.println("CVV: " + cvv);
		
		boolean isSuccess = PaymentsDatabaseUtil.editCard(userID, nameOnCard, cardNumber, cvv, expDate);

		if (isSuccess == true) { // If edit card success;
			RequestDispatcher RD = request.getRequestDispatcher("PaymentControllerServlet");
			RD.forward(request, response);
		} else { // If edit card not success;
			RequestDispatcher RD = request.getRequestDispatcher("unsuccess.jsp");
			RD.forward(request, response);
		}
	}

}
