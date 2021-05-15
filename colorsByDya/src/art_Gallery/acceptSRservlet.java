package art_Gallery;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/acceptSRservlet")
public class acceptSRservlet extends HttpServlet {
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
		
		boolean isTrue;
		
		isTrue = RequestDBUtil.updateSpecialAccept(request_id, name, phone, email, message, photograph, add_line_01, add_line_02, postal_code, province, city, country);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("requestSuccess.jsp");
			dis.forward(request, response);
			
			try {
				MailUtilCustomer.sendMail("it19971490@my.sliit.lk");
			} catch (MessagingException e) {
				
				e.printStackTrace();
			}
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("requestUnsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
