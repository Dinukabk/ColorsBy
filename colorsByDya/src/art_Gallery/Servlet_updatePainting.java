package art_Gallery;

import java.io.IOException;
import java.util.List;

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
		
		boolean updateSuccess;
		
		updateSuccess = PaintingDBUtil.updatePainting(painting_id, title, description, price, drawn_date, category, weight, length, width, image_url, material, in_stock, frame); 
		
		if(updateSuccess == true) {
			
			// passing updated data
			//List<Customer> cusDetails = PaintingDBUtil.displayPaintingList(painting_id);
			//request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("success.jsp");
			dispatch.forward(request, response);
		}
		else {
			//List<Customer> cusDetails = PaintingDBUtil.getCustomerDetails(id);
			//request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatch = request.getRequestDispatcher("fail.jsp");
			dispatch.forward(request, response);
		}
	}

}
