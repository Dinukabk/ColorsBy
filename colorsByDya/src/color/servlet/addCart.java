package color.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import color.model.*;
import color.service.*;

/**
 * Servlet implementation class addToCart
 */
@WebServlet("/addCart")
public class addCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

				Cart cart = new Cart();
				
				cart.setPainting_id(Integer.parseInt(request.getParameter("id")));
				cart.setQuantity(Integer.parseInt(request.getParameter("quantity")));
				cart.setUserId(request.getSession(false).getAttribute("userID").toString());
				
				CartService cartService = new CartService();
				cartService.addCart(cart);
				
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/myCart.jsp");
				dispatcher.forward(request, response);
				
	}

}
