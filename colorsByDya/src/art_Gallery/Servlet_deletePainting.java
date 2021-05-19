package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet_deletePainting")
public class Servlet_deletePainting extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String painting_id = request.getParameter("painting_id");
		
		boolean deleteSuccess;
		
		deleteSuccess = PaintingDBUtil.deletePainting(painting_id);
		
		if(deleteSuccess == true) {
			
			// passing updated data
			//List<Customer> cusDetails = PaintingDBUtil.displayPaintingList(painting_id);
			//request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatch1 = request.getRequestDispatcher("ArtistList.jsp");
			dispatch1.forward(request, response);
		}
		else {
			//List<Customer> cusDetails = PaintingDBUtil.getCustomerDetails(id);
			//request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatch2 = request.getRequestDispatcher("unsuccess.jsp");
			dispatch2.forward(request, response);
		}
		
	}

}
