package art_Gallery;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteRequestServlet")
public class DeleteRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String request_id = request.getParameter("request_id");
		
		boolean isTrue;
		
		isTrue = RequestDBUtil.deleteRequest(request_id);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("SpecialRequest.jsp");
			dis.forward(request, response);
		}
		else {
			List<Request> reqCusList = RequestDBUtil.getRequestDetails(request_id);
			request.setAttribute("reqCusList", reqCusList);
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerViewRequest.jsp");
			dis.forward(request, response);
		}
	}

}
