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

@WebServlet("/PaymentEditRedirector")
public class PaymentEditRedirector extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
    	HttpSession session = request.getSession(false);
    	if (session != null) {
    		int userID = (int) session.getAttribute("userID");
    		PaymentsDatabaseUtil.getCardDetails(userID);
			
			request.setAttribute("cardNo", PaymentsDatabaseUtil.getCardNo());
			request.setAttribute("nameOnCard", PaymentsDatabaseUtil.getNameOnCard());
			request.setAttribute("expDate", PaymentsDatabaseUtil.getExpDate());
			request.setAttribute("cvv", PaymentsDatabaseUtil.getCVV());

			RequestDispatcher RD = request.getRequestDispatcher("./Payments/paymentEdit.jsp");
			RD.forward(request, response);
    	}
	}

}
