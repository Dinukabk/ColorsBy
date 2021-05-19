

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import art_Gallery.DeliveryCustomer;
import art_Gallery.DeliveryDBUtil;

@WebServlet("/DeliveryRetriveEditServlet")
public class DeliveryRetriveEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public DeliveryRetriveEditServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int P_id = Integer.parseInt(request.getParameter("P_id"));
		
		try {
			DeliveryCustomer d  = DeliveryDBUtil.retriveDeliveryInfo(P_id);
			request.setAttribute("ObDeli",  d);
			request.getRequestDispatcher("DeliveryUpdate.jsp").forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}
