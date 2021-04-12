package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RequestServlet")
public class RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
	    String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
	    String photograph = request.getParameter("photo");
		String add_line_01 = request.getParameter("add1");
		String add_line_02 = request.getParameter("add2");
		String postal_code = request.getParameter("add_postal");
		String province = request.getParameter("add_province");
		String city = request.getParameter("add_city");
		String country = request.getParameter("add_country");
		
		boolean isTrue;
		
		isTrue = RequestDBUtil.insertSRequest(name, phone, email, message, photograph, add_line_01, add_line_02, postal_code, province, city, country);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("CustomerViewRequest.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("requestUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
