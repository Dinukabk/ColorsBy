package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Gallery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Gallery() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Gallery1 g = new
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		if (request.getParameter("JOIN") != null) {
			Gallery1.validate();
			pw.print("Hii");
		}
	}
}
