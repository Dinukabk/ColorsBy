package Art_Gallery;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        
        String username=request.getParameter("username");  
        String password=request.getParameter("pass"); 
        
        try {
      
        	List<Artist> artistDetails = ArtistDBUtil.validate(username, password);
        	request.setAttribute("artistDetails", artistDetails);
        }
        catch(Exception e) {
        	e.printStackTrace();
        }
        
        RequestDispatcher dis = request.getRequestDispatcher("My_profile.jsp");
        dis.forward(request, response);
       
	}
}


