package art_Gallery;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.Image;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;


@WebServlet("/PDFrequestServlet")
public class PDFrequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Get session
		HttpSession session = request.getSession(false);

		if (session.getAttribute("artistUserID") != null) {
			System.out.println("No user ID Detected in session...");
		    int artistUserID = (int) session.getAttribute("artistUserID");
			
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			String count;
			String acceptCount;
			
	        Document document = new Document();
	        System.out.println("coming to servlet");
			
			try {
				
				con = RequestDBConnector.getConnection();
				stmt = con.createStatement();
				
				PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("D://TestReq.pdf"));
				document.open();
				//document.add(new Paragraph("Special Requests"));
				System.out.println("Reading this");
				Paragraph p = new Paragraph();
				p.add("Special Requests");
				p.setAlignment(Element.ALIGN_CENTER);
				document.add(p);
				
				document.add(new Paragraph(" "));
				document.add(new Paragraph(" "));
				
				List listR = new List(List.UNORDERED);
				
				//counting all requests
				String sql_1 = "SELECT COUNT(*) AS RCount from special_request where artist_name=3";
				rs = stmt.executeQuery(sql_1);
				System.out.println(rs);
				//String count = String.valueOf(rs.getInt(stmt.executeQuery(sql_1)));
				
				if(rs.next()) {
					count = String.valueOf(rs.getInt("RCount"));
					System.out.println(count);
					listR.add(new ListItem("No of Requests : " + count));
				}
				//counting accepted requests
				String sql_2 = "SELECT COUNT(*) AS RCountA from special_request where artist_name=3 AND accept=1";
				rs = stmt.executeQuery(sql_2);
				
				if(rs.next()) {
					acceptCount = String.valueOf(rs.getInt("RCountA"));
					listR.add(new ListItem("No of Accepted Requests : " + acceptCount));
				}
				
				document.add(listR);
				
				
				/*
				con = RequestDBConnector.getConnection();
				stmt = con.createStatement();
				String sql_1 = "SELECT COUNT(*) from special_request;";
				ResultSet rs1 = stmt.executeQuery(sql_1);
				document.add(new Paragraph(String.valueOf(rs1.getInt("COUNT(*)"))));
				*/
				
				document.add(new Paragraph(" "));
				
				 PdfPTable table = new PdfPTable(5); 
				 table.setWidthPercentage(105);
				 table.setSpacingBefore(11f); 
				 table.setSpacingAfter(11f);
				  
				 float[] colWidth= {15,15,15,15,15}; 
				 table.setWidths(colWidth);
				 PdfPCell c1 = new PdfPCell(new Paragraph("Request ID"));
				 PdfPCell c2 = new PdfPCell(new Paragraph("Customer Name"));
				 PdfPCell c3 = new PdfPCell(new Paragraph("Phone Number"));
				 PdfPCell c4 = new PdfPCell(new Paragraph("Message"));
				 PdfPCell c5 = new PdfPCell(new Paragraph("Photograph"));
				 
				 
				 table.addCell(c1);
				 table.addCell(c2);
				 table.addCell(c3);
				 table.addCell(c4);
				 table.addCell(c5);
				 
				 table.setHeaderRows(1);
				 
				 PdfPCell[] cells = table.getRow(0).getCells();
				 
				 for(int j=0; j<cells.length; j++) {
					 cells[j].setBackgroundColor(BaseColor.GRAY);
				 }
				 
				 	
					String sql = "select sr.request_id,sr.name,sr.phone,sr.message,sr.photograph FROM special_request sr, artist a WHERE sr.artist_name=a.artist_id AND a.artist_id=3 AND sr.accept=1";
					rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						table.addCell(String.valueOf(rs.getInt("request_id")));
						table.addCell(rs.getString("name"));
						table.addCell(String.valueOf(rs.getInt("phone")));
						table.addCell(rs.getString("message"));
						table.addCell(rs.getString("photograph"));
						//Image img = Image.getInstance("photograph");
						//table.addCell(img);
						//table.addCell(Image img = Image.getInstance(rs.getString("photograph")));
						//table.addCell(<img src="images/rs.getString("photograph")\" width=\"200px\" height=\"200px\"/>);"
						//Image img = Image.getInstance(rs.getString("photograph"));
						
					}
				 
				 document.add(table);
				 
				 //Image img = Image.getInstance("D:\\deepthi_02");
				 //document.add(img);
				
				document.close();
				writer.close();
				System.out.println("Done");
			}
			catch(DocumentException e) {
				e.printStackTrace();
			}
			catch(FileNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} else {
			System.out.println("User ID detected in the session...");
			RequestDispatcher RD = request.getRequestDispatcher("index.jsp");
			RD.forward(request, response);
		}
		
		
	}

}
