package art_Gallery;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet_GalleryLogin")
public class Servlet_GalleryLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//PrintWriter out = response.getWriter();
		//response.setContentType("text/html");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		/*
		 * boolean isTrue;
		 * 
		 * isTrue = PaintingDBUtil.validate(username, password);
		 * 
		 * if (isTrue == true) { List<Painting> paintingDetails =
		 * PaintingDBUtil.displayPaintingList(username, password);
		 * 
		 * request.setAttribute("paintingDetails", paintingDetails);
		 * 
		 * RequestDispatcher dispatch = request.getRequestDispatcher("Artworks.jsp");
		 * 
		 * dispatch.forward(request, response); } else {
		 * out.println("<script type='text/javascript'>");
		 * out.println("alert('Your username or password is incorrect');");
		 * out.println("location='login.jsp'"); out.println("</script>"); }
		 */
		
		try {
			List<Painting> paintingDetails = PaintingDBUtil.displayPaintingList(username, password);
			request.setAttribute("paintingDetails", paintingDetails);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		RequestDispatcher dispatch = request.getRequestDispatcher("Artworks.jsp");
		dispatch.forward(request, response);
		
	}

}
