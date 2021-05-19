package art_Gallery;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteartist")
public class ArtistDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("artist_id");
		boolean isTrue;
		
		isTrue = ArtistDBUtil.deleteArtist(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("ArtistInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Artist> artDetails = ArtistDBUtil.getArtistDetails(id);
			request.setAttribute("artDetails", artDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ArtistList.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
