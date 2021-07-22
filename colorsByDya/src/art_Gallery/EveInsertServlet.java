package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/EveInsertServlet")
public class EveInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String date = request.getParameter("date");
		String status = request.getParameter("status");
		String description = request.getParameter("description");
		String adminID = request.getParameter("adminID");
		
		boolean t;
		
		t = eventDBUtil.insertEvent(name, date, status, description, adminID);
		
		if(t == true) 
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
