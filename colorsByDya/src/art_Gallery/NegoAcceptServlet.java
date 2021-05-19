package art_Gallery;

import java.io.IOException;


import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NegoAcceptServlet")
public class NegoAcceptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String price_req_id = request.getParameter("price_req_id");
		String full_name = request.getParameter("full_name");
		String phone_no = request.getParameter("phone_no");
		String title = request.getParameter("title");
		String image_url = request.getParameter("image_url");
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue = RequestDBUtil.updateNegoAccept(price_req_id, full_name, phone_no, title, image_url, message);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Artist.jsp");
			dis.forward(request, response);
			try {
				MailUtilCustomer.sendMail("lochanawijerathna27@gmail.com");
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
