package art_Gallery;

import java.io.IOException;

import java.io.PrintWriter;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = ArtistDBUtil.validate(userName, password);
		
		if (isTrue == true) {
			List<Artist> artDetails = ArtistDBUtil.getArtist(userName);
			request.setAttribute("artDetails", artDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("artist.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='index.jsp'");
			out.println("</script>");
		}
		
	}

}













/*
 * public class LoginServlet extends HttpServlet { private static final long
 * serialVersionUID = 1L;
 * 
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * response.setContentType("text/html"); PrintWriter out = response.getWriter();
 * 
 * String username=request.getParameter("username"); String
 * password=request.getParameter("pass");
 * 
 * try {
 * 
 * List<Artist> artistDetails = ArtistDBUtil.validate(username, password);
 * request.setAttribute("artistDetails", artistDetails); } catch(Exception e) {
 * e.printStackTrace(); }
 * 
 * RequestDispatcher dis = request.getRequestDispatcher("My_profile.jsp");
 * dis.forward(request, response);
 * 
 * } }
 * 
 * 
 */