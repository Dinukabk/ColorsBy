package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PaymentDeleteCardServlet")
public class PaymentDeleteCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PaymentDeleteCardServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		int userID = (int) session.getAttribute("userID");
		
		boolean isSuccess = PaymentsDatabaseUtil.deleteCard(userID);
		
		if (isSuccess == true) {
			Boolean cardAvailability = PaymentsDatabaseUtil.checkCard(userID);
			if (cardAvailability == true) {
				RequestDispatcher RD = request.getRequestDispatcher("./Payments/unsuccess.jsp");
				RD.forward(request, response);
			} else {
				RequestDispatcher RD = request.getRequestDispatcher("./Payments/payment.jsp");
				RD.forward(request, response);				
			}
		}
	}

}
