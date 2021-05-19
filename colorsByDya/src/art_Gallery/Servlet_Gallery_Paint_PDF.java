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
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


@WebServlet("/Servlet_Gallery_Paint_PDF")
public class Servlet_Gallery_Paint_PDF extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Get session
				HttpSession session = request.getSession(false);

				if (session.getAttribute("artistUserID") != null) {
					System.out.println("No user ID Detected in session...");
					
					Connection con = null;
					Statement stmt = null;
					ResultSet rs = null;
					
			        Document document = new Document();
			        System.out.println("coming to servlet");
					
					try {
						PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("D://Artwork_Test2.pdf"));
						document.open();
						document.add(new Paragraph("Artwork"));
						System.out.println("Reading this");
						
						 PdfPTable table = new PdfPTable(4); 
						 table.setWidthPercentage(105);
						 table.setSpacingBefore(11f); 
						 table.setSpacingAfter(11f);
						  
						 float[] colWidth= {15,15,15,15}; 
						 table.setWidths(colWidth);
						 PdfPCell c1 = new PdfPCell(new Paragraph("Painting ID"));
						 PdfPCell c2 = new PdfPCell(new Paragraph("Painting Title"));
						 PdfPCell c3 = new PdfPCell(new Paragraph("Category"));
						 PdfPCell c4 = new PdfPCell(new Paragraph("Sold-Out"));
						 //PdfPCell c5 = new PdfPCell(new Paragraph("Photograph"));
						 
						 
						 table.addCell(c1);
						 table.addCell(c2);
						 table.addCell(c3);
						 table.addCell(c4);
						 //table.addCell(c5);
						 
						 table.setHeaderRows(1);
						 
						 PdfPCell[] cells = table.getRow(0).getCells();
						 
						 for(int j=0; j<cells.length; j++) {
							 cells[j].setBackgroundColor(BaseColor.GRAY);
						 }
						 
						 con = RequestDBConnector.getConnection();
							stmt = con.createStatement();
							String sql = "select p.painting_id, p.title, p.category, pay.status FROM painting p, artist a, payment pay WHERE p.a_artist_id = a.artist_id AND p.painting_id = pay.p_painting_id AND a.artist_id=1";
							
							rs = stmt.executeQuery(sql);
							
							while(rs.next()) {
								table.addCell(String.valueOf(rs.getInt("painting_id")));
								table.addCell(rs.getString("title"));
								table.addCell(rs.getString("category"));
								table.addCell(String.valueOf(rs.getBoolean("status")));
								//table.addCell(rs.getString("photograph"));
								
							}
						 
						 document.add(table);
						
						document.close();
						writer.close();
						System.out.println("Done");
					} // try ends
					
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
