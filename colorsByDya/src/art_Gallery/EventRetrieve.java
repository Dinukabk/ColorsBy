package art_Gallery;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EventRetrieve")
public class EventRetrieve extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eventName = request.getParameter("EventName");
		String adminID = request.getParameter("AdminID");
		
		try
		{
			List<EventClass> eveDetails = eventDBUtil.validate(eventName, adminID);
			request.setAttribute("eveDetails", eveDetails);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("EventDataDisplay.jsp");
		dis.forward(request, response);
		
		
		
	}

}
