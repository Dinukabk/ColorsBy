package art_Gallery;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/negotiateInsertServlet")
public class negotiateInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue = RequestDBUtil.insertNegotiate(message);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("Gallery_All_Logged.jsp");
			dis.forward(request, response);
			
			try {
				MailUtil.sendMail("it19971490@my.sliit.lk");
			} catch (MessagingException e) {
				
				e.printStackTrace();
			}
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("requestUnsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
