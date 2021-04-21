package art_Gallery;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteArtistServlet")
public class DeleteArtistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String artist_id = request.getParameter("artist_id");
		boolean isTrue;
		
		isTrue = ArtistDBUtil.deleteArtist(artist_id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("ArtistInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Artist> artDetails = ArtistDBUtil.getArtistDetails(artist_id);
			request.setAttribute("artDetails", artDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("artist.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}



		
		
	


}
