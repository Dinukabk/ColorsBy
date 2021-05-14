package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DeliveryInsert")
public class DeliveryInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// HttpSession session = request.getSession(false);
		// String userID = (String) session.getAttribute("userID");
		
		String fullName = request.getParameter("Fname");
		String AdddLineOne = request.getParameter("addLineOne");
		String AdddLineTwo = request.getParameter("addLineTwo");
		String postalCord = request.getParameter("PostalCo");
		String province = request.getParameter("DeliveryPro");
		String City = request.getParameter("eliveryCityy");
		String Country = request.getParameter("DelivertCountry");
		
		boolean isTrue;
		
		isTrue = DeliveryDBUtil.insertDeliery(fullName, AdddLineOne, AdddLineTwo, postalCord, province, City, Country);
		
		if(isTrue == true) {			
			RequestDispatcher dis = request.getRequestDispatcher("DeliverySuccess.jsp");
			dis.forward(request, response);

		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("DeliveryUnSuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
