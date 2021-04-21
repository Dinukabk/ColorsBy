package art_Gallery;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateArtistServlet")
public class updateArtistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		String name = request.getParameter("name");
		String phone_no = request.getParameter("phone_no");
		String email= request.getParameter("email");
		String description = request.getParameter("description");
		String add_line_01 = request.getParameter("add_line_01");
		String add_line_02 = request.getParameter("add_line_02");
		String postal_code = request.getParameter("postal_code");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
		
		
		boolean isTrue;
		
		
		isTrue = ArtistDBUtil.updateartist( name, phone_no, email, description, add_line_01, add_line_02, postal_code, province, city, country, username, password);
		
		if(isTrue == true) {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}













/*
 * @WebServlet("/UpdateCustomerServlet") public class UpdateCustomerServlet
 * extends HttpServlet { private static final long serialVersionUID = 1L;
 * 
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * 
 * String id = request.getParameter("cusid"); String name =
 * request.getParameter("name"); String email = request.getParameter("email");
 * String phone = request.getParameter("phone"); String username =
 * request.getParameter("uname"); String password =
 * request.getParameter("pass");
 * 
 * boolean isTrue;
 * 
 * isTrue = CustomerDBUtil.updatecustomer(id, name, email, phone, username,
 * password);
 * 
 * if(isTrue == true) {
 * 
 * List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
 * request.setAttribute("cusDetails", cusDetails);
 * 
 * RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
 * dis.forward(request, response); } else { List<Customer> cusDetails =
 * CustomerDBUtil.getCustomerDetails(id); request.setAttribute("cusDetails",
 * cusDetails);
 * 
 * RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
 * dis.forward(request, response); } }
 * 
 * }
 * 
 */