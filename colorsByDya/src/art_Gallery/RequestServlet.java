package art_Gallery;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
//import java.io.InputStream;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.Part;



@WebServlet("/RequestServlet")
public class RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			
			
		String name = request.getParameter("name");
	    String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
	    String photograph = request.getParameter("photograph");// to get path of the image
		//Part filePart = request.getPart("photograph");
		String add_line_01 = request.getParameter("add_line_01");
		String add_line_02 = request.getParameter("add_line_02");
		String postal_code = request.getParameter("postal_code");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String c_customer_id = request.getParameter("1");
		String artist_name = request.getParameter("artist_name");
		
		
		
		
		//fis contains bits and binaries of video
		
		//store data into Database and call the getconnection method
		
		/*
		 * InputStream inputStream = null;
		 * 
		 * if(filePart != null) { long fileSize = filePart.getSize();//not using String
		 * fileContent = filePart.getContentType();//not using inputStream =
		 * filePart.getInputStream(); }
		 */
		
		
		
		boolean isTrue;
		
		isTrue = RequestDBUtil.insertSRequest(name, phone, email, message, photograph, add_line_01, add_line_02, postal_code, province, city, country,c_customer_id,artist_name);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("SpecialRequest.jsp");
			dis.forward(request, response);
			
			try {
				MailUtil.sendMail("it19971490@my.sliit.lk");
			} catch (MessagingException e) {
				
				e.printStackTrace();
			}
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("requestUnsuccess.jsp");
			dis2.forward(request, response);
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
