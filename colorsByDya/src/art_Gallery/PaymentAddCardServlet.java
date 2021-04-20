package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PaymentAddCardServlet")
public class PaymentAddCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession(false);
		if (session != null) {
			int userID = (int) session.getAttribute("userID");
			String userName = PaymentsDatabaseUtil.getUserName(userID);
			request.setAttribute("userName", userName);
			
			RequestDispatcher RD = request.getRequestDispatcher("./Payments/paymentAddCard.jsp");
			RD.forward(request, response);
		} else {
			RequestDispatcher RD = request.getRequestDispatcher("login_01.jsp");
			RD.forward(request, response);
		}
	}

}
