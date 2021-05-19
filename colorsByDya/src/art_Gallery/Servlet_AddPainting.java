package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Servlet_AddPainting")
public class Servlet_AddPainting extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession(false);
		
		if (session != null) { // If a session exists			
			int artistUserID = (int) session.getAttribute("artistUserID");
			request.setAttribute("artistUserID", artistUserID);

		 //if (session.getAttribute("artistUserID") != null) { 
			 
			String artistUserName = PaintingDBUtil.getArtistUsername(artistUserID);
			request.setAttribute("artistUserName", artistUserName);
			
			System.out.println("No user ID Detected in session...");
			RequestDispatcher RD = request.getRequestDispatcher("UploadPaint.jsp");
			RD.forward(request, response);
			} 
		
		else {
			System.out.println("User ID detected in the session...");
			RequestDispatcher RD = request.getRequestDispatcher("artistLogin.jsp");
			RD.forward(request, response);
			}
		
	}

}
