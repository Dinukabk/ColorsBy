package art_Gallery;

import java.io.IOException;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet_updatePainting")

public class Servlet_updatePainting extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Assign the updated data coming from Gallery_UpdatePainting.jsp page form
		String painting_id = request.getParameter("painting_id");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
		String drawn_date = request.getParameter("drawn_date");
		String category = request.getParameter("category");
		String weight = request.getParameter("weight");
		String length = request.getParameter("length");
		String width = request.getParameter("width");
		String image_url = request.getParameter("image_url");
		String material = request.getParameter("material");
		String in_stock = request.getParameter("in_stock");
		String frame = request.getParameter("frame");
		
		//int artistUserID = Integer.parseInt(request.getParameter("artistUserID"));
		/*
		 * String a_artist_id = request.getParameter("a_artist_id"); String c_cart_id =
		 * request.getParameter("c_cart_id");
		 */           // Then send this data to DBUtil to store in the database
		
		boolean updateSuccess;
		
		/*
		 * updateSuccess = PaintingDBUtil.updatePainting(painting_id, title,
		 * description, price, drawn_date, category, weight, length, width, image_url,
		 * material, in_stock, frame, a_artist_id, c_cart_id);
		 * 
		 * 		 */
		
		updateSuccess = PaintingDBUtil.updatePainting(painting_id, title,
				 description, price, drawn_date, category, weight, length, width, image_url,
				 material, in_stock,frame);
		if(updateSuccess == true) {
			
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
