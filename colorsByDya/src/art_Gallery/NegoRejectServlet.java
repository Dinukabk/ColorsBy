package art_Gallery;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/NegoRejectServlet")
public class NegoRejectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* String price_req_id = request.getParameter("price_req_id"); */
		
		RequestDBUtil.updateNegoStatusReject();
		
		/*
		 * boolean isTrue;
		 * 
		 * isTrue = RequestDBUtil.updateNegoStatusAccept();
		 * 
		 * if(isTrue == true) {
		 * 
		 * System.out.println("Success"); } else {
		 * 
		 * System.out.println("Unuccess"); }
		 */
	}

}
