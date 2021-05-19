package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EventUpdateServlet")
public class EventUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("ID");
		String name = request.getParameter("Uname");
		String date = request.getParameter("Udate");
		String status = request.getParameter("Ustatus");
		String description = request.getParameter("Udescription");
		String adminID = request.getParameter("UadminID");
		
		boolean isTrue;
		
		isTrue = eventDBUtil.updateEvent(id, name, date, status, description, adminID);
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("EventAllRetriv.jsp");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
