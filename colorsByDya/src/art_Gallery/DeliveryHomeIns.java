package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeliveryHomeIns")
public class DeliveryHomeIns extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeliveryHomeIns() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession(false);
		int userID = (int) session.getAttribute("userID");
		request.setAttribute("userID", userID);
		
		RequestDispatcher RD = request.getRequestDispatcher("DeliveryInsert.jsp");
		RD.forward(request, response);
	}

}
