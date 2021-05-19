

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import art_Gallery.DeliveryCustomer;
import art_Gallery.DeliveryDBUtil;
import art_Gallery.Request;

@WebServlet("/DeliveryUpdateServlet")
public class DeliveryUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeliveryUpdateServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullName = request.getParameter("Fname");
		String AdddLineOne = request.getParameter("addLineOne");
		String AdddLineTwo = request.getParameter("addLineTwo");
		int postalCord = Integer.parseInt(request.getParameter("PostalCo"));
		String province = request.getParameter("DeliveryPro");
		String City = request.getParameter("eliveryCityy");
		String Country = request.getParameter("DelivertCountry");
		int del_id = Integer.parseInt(request.getParameter("d_id"));
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		
		DeliveryCustomer deliveryCustomer = new DeliveryCustomer(del_id, fullName,AdddLineOne,AdddLineTwo, postalCord,province, City, Country);
		try {
		          boolean isUpdated =  DeliveryDBUtil.updatedDeliveryInfo(deliveryCustomer);
		          if(isUpdated) {
		           request.setAttribute("pid",p_id);
		           request.getRequestDispatcher("DeliverySuccess.jsp").forward(request, response);
		           
		          }
		          else {
		        	  
		          }
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
