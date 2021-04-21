package art_Gallery;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Servlet_GalleryLogin")
public class Servlet_GalleryLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		if (session != null) {
			int ArtistUserID = (int) session.getAttribute("artistUserID");
			System.out.println("Artist ID in servlet: " + ArtistUserID);
			try {
				List<Painting> paintingDetails = PaintingDBUtil.displayPaintingList(ArtistUserID);
				request.setAttribute("paintingDetails", paintingDetails);
				RequestDispatcher dispatch = request.getRequestDispatcher("Artworks.jsp");
				dispatch.forward(request, response);
			}
			catch(Exception e){
				e.printStackTrace();
			}
		} else {
			RequestDispatcher RD = request.getRequestDispatcher("artistLogin.jsp");
			RD.forward(request, response);
		}
		
		
		
	}

}
