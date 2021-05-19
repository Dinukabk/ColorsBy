package art_Gallery;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtilCustomer {
	public static void sendMail(String recepient) throws MessagingException {
		System.out.println("Preparing to send email");
		Properties properties = new Properties();
		
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		
		//mail.smtp.auth
		//mail.smtp.starttls.enable
		//mail.smtp.host - smtp.gmail.com
		//mail.smtp.port - 587
		
		String webAccountEmail = "colorsByDiyaa@gmail.com";
		String webPassword = "Diya@web101";
		
		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(webAccountEmail, webPassword);
			}
		});
		
		Message message = prepareMessage(session, webAccountEmail, recepient);
		
		Transport.send(message);
		System.out.println("Message sent successfully");
	}

	private static Message prepareMessage(Session session, String webAccountEmail, String recepient) {
		
		
			Message message = new MimeMessage(session);
			try {
				message.setFrom(new InternetAddress(webAccountEmail));
				message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
				message.setSubject("Colors By Diyaa");
				message.setText("Hello,\n Your Request has been accepted");
				
				return message;
			} catch (AddressException e) {
				
				e.printStackTrace();
				return null;
			} catch (MessagingException e) {
				
				e.printStackTrace();
				return null;
			}
		
		
		
	}

}
