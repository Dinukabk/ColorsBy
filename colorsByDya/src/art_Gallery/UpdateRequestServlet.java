package art_Gallery;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateRequestServlet")
public class UpdateRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String request_id = request.getParameter("request_id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String photograph = request.getParameter("photograph");
		String add_line_01 = request.getParameter("add_line_01");
		String add_line_02 = request.getParameter("add_line_02");
		String postal_code = request.getParameter("postal_code");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String c_customer_id = request.getParameter("c_customer_id");
		String artist_name = request.getParameter("artist_name");
		String accept = request.getParameter("accept");
		
		boolean isTrue;
		
		isTrue = RequestDBUtil.updateRequest(request_id, name, phone, email, message, photograph, add_line_01, add_line_02, postal_code, province, city, country, c_customer_id, artist_name,accept);
		
		if(isTrue == true) {
			
			List<Request> reqCusList = RequestDBUtil.getRequestDetails(request_id);
			request.setAttribute("reqCusList", reqCusList);
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerViewRequest.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Request> reqCusList = RequestDBUtil.getRequestDetails(request_id);
			request.setAttribute("reqCusList", reqCusList);
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerViewRequest.jsp");
			dis.forward(request, response);
		}
	}

}
