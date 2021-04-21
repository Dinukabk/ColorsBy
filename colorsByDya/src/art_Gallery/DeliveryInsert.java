package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeliveryInsert")
public class DeliveryInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String DeliId = request.getParameter("Did");
		String fullName = request.getParameter("Fname");
		String AdddLineOne = request.getParameter("addLineOne");
		String AdddLineTwo = request.getParameter("addLineTwo");
		String postalCord = request.getParameter("PostalCo");
		String province = request.getParameter("DeliveryPro");
		String City = request.getParameter("eliveryCityy");
		String Country = request.getParameter("DelivertCountry");
		String Status = request.getParameter("Delivery");
		String paymentId = request.getParameter("DPid");
		String Username = request.getParameter("Uid");
		String Password = request.getParameter("psw");
		
		
		boolean isTrue;
		
		isTrue = DeliveryDBUtil.insertDeliery(DeliId, fullName, AdddLineOne, AdddLineTwo, postalCord, province, City, Country, Status, paymentId, Username, Password);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("DeliverySuccess.jsp");
			dis.forward(request, response);

		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("DeliveryUnSuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
