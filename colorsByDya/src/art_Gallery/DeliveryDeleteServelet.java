//package art_Gallery;
//
//import java.io.IOException;
//import java.sql.SQLException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/DeliveryDeleteServelet")
//public class DeliveryDeleteServelet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	
//
//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	String fullName = request.getParameter("Fname");
//	
//	DeliveryCustomer deliveryCustomer = new DeliveryCustomer(del_id, fullName);
//	try {
//	          boolean isDelete =  DeliveryDBUtil.deleteDelivery(deliveryCustomer);
//	          if(isDelete) {
//	           request.setAttribute("pid",p_id);
//	           request.getRequestDispatcher("DeliverySuccess.jsp").forward(request, response);
//	           
//	          }
//	          else {
//	        	  
//	          }
//		
//		
//	} catch (SQLException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}
//	
//	
//		
//	}
//		
//}
