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
			int artistUserID = (int) session.getAttribute("artistUserID");
			request.setAttribute("artistUserID", artistUserID);
			
			String artistUserName = PaintingDBUtil.getArtistUsername(artistUserID);
			request.setAttribute("artistUserName", artistUserName);
			
			System.out.println("Artist ID in servlet: " + artistUserID);
			
			try {
				List<Painting> paintingDetails = PaintingDBUtil.displayPaintingList(artistUserID);
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
