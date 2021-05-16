package art_Gallery;

import java.io.FileOutputStream;

import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class GenerateEventPdf {

	public static void main(String[] args) {
	
		try {
			
		String event_report = "E:\\generatePdf\\event_details.pdf";
		
		Document document = new Document();
	
		
		PdfWriter.getInstance(document, new FileOutputStream(event_report));
		document.open();	
		Paragraph para = new Paragraph("This is my event repot.");
		document.add(para);
		
		
		document.close();
		
		System.out.println("Finished");
		
		} 
		
		catch (Exception e) 
		{
			
			e.printStackTrace();
		}
		
	}

}
