package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet_InsertPainting")

public class Servlet_InsertPainting extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		 String title = request.getParameter("artworkTitle");
		 String description = request.getParameter("artworkDescription");
		 String price = request.getParameter("artworkFixedValue");
		 
		 //Date drawn_date = request.getParameter("drawnDate");
		 
		 //String category = request.getParameter("artworkCategory");
		 String weight = request.getParameter("artworkWeight");
		 String length = request.getParameter("artworkLength");
		 String width = request.getParameter("artworkWidth");
		 
		 //String image_url = request.getParameter("imagePainting");
		 
		 String material = request.getParameter("artworkMaterial");
		 
		 //boolean in_stock = request.getParameter();
		 
		 String frame = request.getParameter("artworkFrame");
		 
		 boolean insertSuccess;
		 
		 insertSuccess = PaintingDBUtil.insertPainting(title, description, price, weight, length, width, material, frame);
		 
		 if(insertSuccess == true) {
			 RequestDispatcher dispatchSuccess = request.getRequestDispatcher("success.jsp");
			 dispatchSuccess.forward(request, response);
		 }
		 else {
			 RequestDispatcher dispatchFail = request.getRequestDispatcher("fail.jsp");
			 dispatchFail.forward(request, response);
		 }
	
	}// end of doPost method

} //end of class
