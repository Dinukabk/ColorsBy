package art_Gallery;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/negoNavServlet")
public class negoNavServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Get session
				HttpSession session = request.getSession(false);

				if (session.getAttribute("userID") != null) {
					System.out.println("No user ID Detected in session...");
					RequestDispatcher RD = request.getRequestDispatcher("NegotiatePrice.jsp");
					RD.forward(request, response);
				} else {
					System.out.println("User ID detected in the session...");
					RequestDispatcher RD = request.getRequestDispatcher("index.jsp");
					RD.forward(request, response);
				}
				
				try {
					MailUtil.sendMail("lochanawijerathna27@gmail.com");
				} catch (MessagingException e) {
					
					e.printStackTrace();
				}
	}

}
