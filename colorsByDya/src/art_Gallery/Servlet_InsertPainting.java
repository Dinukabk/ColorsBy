package art_Gallery;

import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;



@MultipartConfig
@WebServlet("/Servlet_InsertPainting")

public class Servlet_InsertPainting extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		/*
		  Part file = request.getPart("imagePainting"); 
		  String imageFileName= Paths.get(file.get)
				  //file.getSubmittedFileName();
		  String imageFileName2= file.getParameterValues();
		  
		  String uploadFilePath = "C:/Users/user/git/ColorsByDiyaa/colorsByDya/WebContent/images/"+imageFileName;
		 
		 */
	
		
		 String title = request.getParameter("artworkTitle");
		 String description = request.getParameter("artworkDescription");
		 
		 String price;
		 String price2 = request.getParameter("radio_price");
		 
		 if ("Negotiate Price".equals(price2)) {
			 price = request.getParameter("radio_price");
		 }
		 else {
			 price = request.getParameter("artworkFixedValue");
		 }
		  /*
		 if(request.getParameter("artworkFixedValue") != null) {
			  price = request.getParameter("artworkFixedValue");
		 }
		 else {
			 price = request.getParameter("radio_price");
		 }
		 */
		 
		 String drawn_date = request.getParameter("drawnDate");
		 
		 String category = request.getParameter("artworkCategory");
		 String weight = request.getParameter("artworkWeight");
		 String length = request.getParameter("artworkLength");
		 String width = request.getParameter("artworkWidth");
		 
		
		
		 String image_url = request.getParameter("imagePainting");
		 
		 String material = request.getParameter("artworkMaterial");
		 
		 //String in_stock = request.getParameter();
		 
		 String frame = request.getParameter("artworkFrame");
		 int artistUserID = Integer.parseInt(request.getParameter("artistUserID"));
		 
		 //String a_artist_id = request.getParameter("a_artist_id");
		// String c_cart_id = request.getParameter("artworkFrame");
		 
		 
		 boolean insertSuccess;
		 
		insertSuccess = PaintingDBUtil.insertPainting(title, description, price, drawn_date, category, weight, length, width, image_url, material, frame, artistUserID);
		 
		 if(insertSuccess == true) {
			 RequestDispatcher dispatchSuccess = request.getRequestDispatcher("ArtistList.jsp");
			 dispatchSuccess.forward(request, response);
		 }
		 else {
			 RequestDispatcher dispatchFail = request.getRequestDispatcher("unsuccess.jsp");
			 dispatchFail.forward(request, response);
		 }
	
	}// end of doPost method

} //end of class
