package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Servlet_Gallery_All")
public class Servlet_Gallery_All extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Servlet_Gallery_All() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Get session
		HttpSession session = request.getSession(false);
		
		if (session != null && session.getAttribute("userID") != null) {
			int userID = (int) session.getAttribute("userID");

		 //if (session.getAttribute("userID") != null) {
			 String cusUsername = PaintingDBUtil.getUserName(userID);
			 request.setAttribute("cusUsername", cusUsername);
			 
			 System.out.println("No user ID Detected in session...");
			 RequestDispatcher RD = request.getRequestDispatcher("Gallery_All_Logged.jsp");
			 RD.forward(request, response);
		} 
		 else {
			System.out.println("User ID detected in the session...");
			RequestDispatcher RD = request.getRequestDispatcher("Gallery_All.jsp");
			RD.forward(request, response);
		}
	}

	

}
