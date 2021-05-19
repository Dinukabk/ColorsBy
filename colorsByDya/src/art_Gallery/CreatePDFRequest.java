package art_Gallery;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class CreatePDFRequest {

	public static void main(String[] args) {
		
		Document document = new Document();
		
		try {
			PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("Test.pdf"));
			document.open();
			document.add(new Paragraph("These are the Requests"));
			
			
			 PdfPTable table = new PdfPTable(3); 
			 table.setWidthPercentage(105);
			 table.setSpacingBefore(11f); 
			 table.setSpacingAfter(11f);
			  
			 float[] colWidth= {2f,2f,2f}; 
			 table.setWidths(colWidth);
			 PdfPCell c1 = new PdfPCell(new Paragraph("A"));
			 PdfPCell c2 = new PdfPCell(new Paragraph("B"));
			 PdfPCell c3 = new PdfPCell(new Paragraph("Column3"));
			
			 table.addCell(c1);
			 table.addCell(c2);
			 table.addCell(c3);
			 
			 document.add(table);
			 
			
			document.close();
			writer.close();
		}
		catch(DocumentException e) {
			e.printStackTrace();
		}
		catch(FileNotFoundException e) {
			e.printStackTrace();
		}

	}

}
