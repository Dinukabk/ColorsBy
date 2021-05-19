package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EventDeleteServlet")
public class EventDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("DID");
		boolean isTrue;
		
		isTrue = eventDBUtil.deleteEvent(id);
		
		if (isTrue == true)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("InsertEvent.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
