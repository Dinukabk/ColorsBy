package art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        
        String fname=request.getParameter("fullname");  
        String lid=request.getParameter("loginid"); 
        String passward = request.getParameter("password");
        
        HttpSession session = request.getSession(false);
        if(session!=null)
        session.setAttribute("fullname", fname);

        if(SignupDao.validate(fname,lid, passward)){  
        	out.print("");
            RequestDispatcher rd=request.getRequestDispatcher("thankyou.jsp");  
            rd.forward(request,response);  
        }  
        else{  
            out.print("<p style=\"color:red\">Sorry username or password error</p>");  
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
            rd.include(request,response);  
        }  

        out.close();  
	}*/
		response.setContentType("text/html");  
        PrintWriter pw = response.getWriter(); 
        //String connectionURL = "jdbc:mysql://127.0.0.1:3306/newData";// newData is the database  
        //Connection connection;  
        Connection conn=null;
        String url="jdbc:mysql://localhost:3306/";
        String dbName="colorsbydiyaa";
        String driver="com.mysql.jdbc.Driver";
    
    try{  
      String ano = request.getParameter("artist_id");  
      String aname = request.getParameter("name");  
      String phone = request.getParameter("phone_no");  
      String email = request.getParameter("email");  
      String description = request.getParameter("description"); 
      String address01 = request.getParameter("add_line_01");  
      String address02 = request.getParameter("add_line_02");  
      String postalcode= request.getParameter("postal_code");  
      String province = request.getParameter("province");
      String city = request.getParameter("city");
      String country = request.getParameter("country");
      String username = request.getParameter("username");
      String pwd = request.getParameter("password");  
      String a_admin_id= request.getParameter("a_admin_id");  
      

      Class.forName(driver).newInstance();  
      conn = DriverManager.getConnection(url+dbName,"root", "root");
      PreparedStatement pst =(PreparedStatement) conn.prepareStatement("insert into artist (artist_id, name, phone_no, email, description, add_line_01, add_line_02, postal_code, province, city, country, username, password, a_admin_id ) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");//try2 is the name of the table  
     PreparedStatement pst1 =(PreparedStatement) conn.prepareStatement("insert into login values(?,1,?)");//try2 is the name of the table

      pst.setString(1,ano);  
      pst.setString(2,aname);
      pst.setString(3,phone);        
      pst.setString(4,email);
      pst.setString(5,description);
      pst.setString(6,address01);
      pst.setString(7,address02);
      pst.setString(8,postalcode);
      pst.setString(9,province);
      pst.setString(10,city);
      pst.setString(11,country);
      pst.setString(12,a_admin_id);

      pst1.setString(1,username);
      pst1.setString(2,pwd);
      
      

      int i = pst.executeUpdate();
      pst1.executeUpdate();
      //conn.commit(); 
      String msg=" ";
      if(i!=0){  
        msg="Record has been inserted";
        pw.println("<font size='6' color=blue>" + msg + "</font>"); 
        RequestDispatcher rd=request.getRequestDispatcher("Artist.jsp");  
        
        rd.forward(request,response);  


      }  
      else{  
        msg="failed to insert the data";
        pw.println("<font size='6' color=blue>" + msg + "</font>");
       }  
      pst.close();
    }  
    catch (Exception e){  
      pw.println(e);  
    }  


}
}
