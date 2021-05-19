package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeliveryMethodController")
public class DeliveryMethodController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeliveryMethodController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher RD = request.getRequestDispatcher("DeliveryHomaPage.jsp");
		RD.forward(request, response);
	}

}
