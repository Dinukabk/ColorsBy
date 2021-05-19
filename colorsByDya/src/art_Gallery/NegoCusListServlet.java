package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/NegoCusListServlet")
public class NegoCusListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession(false);
		if (session != null) {
			int userID = (int) session.getAttribute("userID");
			
			String cusUsername = RequestDBUtil.getUserName(userID);
			request.setAttribute("cusUsername", cusUsername);

			try {
				List<NegoAll> negoCusList = RequestDBUtil.negotiateCustomerList(userID);
				request.setAttribute("negoCusList", negoCusList);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			RequestDispatcher RD = request.getRequestDispatcher("artistLogin.jsp");
			RD.forward(request, response);
		}
		RequestDispatcher dis = request.getRequestDispatcher("NegoCusList.jsp");
		dis.forward(request, response);
		
	}

}
