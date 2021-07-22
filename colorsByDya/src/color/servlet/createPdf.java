package color.servlet;

import java.io.*;  
import java.io.IOException;
import com.darwinsys.spdf.PDF;  
import com.darwinsys.spdf.Page;  
import com.darwinsys.spdf.Text;  
import com.darwinsys.spdf.MoveTo;  
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import color.model.*;
import color.service.*;
import java.util.ArrayList;

/**
 * Servlet implementation class createPdf
 */
@WebServlet("/createPdf")
public class createPdf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createPdf() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();  
		response.setContentType("application/pdf");  
		  
		response.setHeader("Content-disposition","inline; filename='javatpoint.pdf'");  
		
		CartService list = new CartService();
		ArrayList<Cart> arrayList = list.getCart(request.getSession(false).getAttribute("userID").toString());
		
		PDF p = new PDF(out);  
		Page p1 = new Page(p);  
		p1.add(new MoveTo(p, 100, 700));  
		p1.add(new Text(p, "Shopping Cart Report")); 
		for (Cart cart : arrayList) {
			p1.add(new Text(p, "Paint Title: "+cart.getName()+", Quantity: "+cart.getQuantity()+", Price (Rs.): "+cart.getPrice()+", Artist Name: "+cart.getArtist()));
		} 
		          
		p.add(p1);  
		p.setAuthor("Ian F. Darwin");  
		  
		p.writePDF();  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
