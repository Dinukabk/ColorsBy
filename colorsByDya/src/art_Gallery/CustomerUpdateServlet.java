package art_Gallery;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerUpdateServlet")
public class CustomerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String fname = request.getParameter("fullname");
		String pNumber = request.getParameter("phoneNo");
		String Address1 = request.getParameter("Address1");
		String Address2 = request.getParameter("Address1");
		String pCode = request.getParameter("PCode");
		String City = request.getParameter("City");
		String Province = request.getParameter("Province");
		String Country = request.getParameter("Country");
		String UserName = request.getParameter("username");
		String Password = request.getParameter("password");

		boolean isTrue;
		
		isTrue = CustomerDbUtill.UpdateCustomer(fname, UserName, Password, pNumber, Address1, Address2, pCode, Province, City, Country,id);
		
		if(isTrue == true) {
			
			//after update get the details and update
			List<CustomerNew> cusDeatils = CustomerDbUtill.getCustomerDetails(id);
			request.setAttribute("cusDeatils", cusDeatils);
			
			RequestDispatcher dis = request.getRequestDispatcher("userDashboard.jsp");
			dis.forward(request, response);
			
		}else {
			List<CustomerNew> cusDeatils = CustomerDbUtill.getCustomerDetails(id);
			request.setAttribute("cusDeatils", cusDeatils);
			
			RequestDispatcher dis = request.getRequestDispatcher("userDashboard.jsp");
			dis.forward(request, response);
			
		}
		
		
	}

}
