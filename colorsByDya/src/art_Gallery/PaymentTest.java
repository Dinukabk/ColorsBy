package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PaymentTest")
public class PaymentTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Test Servlet...");
		HttpSession session = request.getSession(false);
		int userID = (int) session.getAttribute("userID");
		
		String cardNumber, nameOnCard, expDate, cvv;
		
		cardNumber = (String) request.getParameter("cardNumber");
		nameOnCard = (String) request.getAttribute("nameOnCard");
		expDate = (String) request.getParameter("expDate");
		cvv = (String) request.getParameter("cvv");
		
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
