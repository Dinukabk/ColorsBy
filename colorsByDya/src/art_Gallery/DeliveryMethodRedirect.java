package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeliveryMethodRedirect")
public class DeliveryMethodRedirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession(false);
		int userID = (int) session.getAttribute("userID");
		
		if (userID > 0) {
			String method = DeliveryDBUtil.checkDeliveryMethod(userID);
			if (method != null) {
				if (method == "homeDelivery") {
					// HomeDelivery
					System.out.println("Home Delivery");
					RequestDispatcher RD = request.getRequestDispatcher("#");
					RD.forward(request, response);					
				} else {
					System.out.println("PickUp");
					RequestDispatcher RD = request.getRequestDispatcher("DeliveryPersonalyPicIt.jsp");
					RD.forward(request, response);
				}
			} else {
				System.out.println("Chose a method...");
				RequestDispatcher RD = request.getRequestDispatcher("DeliveryHomaPage.jsp");
				RD.forward(request, response);
			}
		}
	}

}
