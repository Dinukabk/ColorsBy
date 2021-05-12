package art_Gallery;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EveInsertServlet")
public class EveInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String date = request.getParameter("date");
		String status =  request.getParameter(String.valueOf("status"));
		String description = request.getParameter("description");
		String adminID = request.getParameter(String.valueOf("adminID"));
		
		
		
		
		
		
		
	
	}

}
