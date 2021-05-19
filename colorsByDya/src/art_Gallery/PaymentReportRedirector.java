package art_Gallery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentReportRedirector")
public class PaymentReportRedirector extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PaymentReportRedirector() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		RequestDispatcher RD = request.getRequestDispatcher("./Payments/paymentReportDummy.jsp");
		RD.forward(request, response);
	}

}
