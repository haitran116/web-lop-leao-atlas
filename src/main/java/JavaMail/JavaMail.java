package JavaMail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class JavaMail {
	
	public void SendMail(String tieude, String noidung) {
		
		String HOST_NAME = "smtp.gmail.com";
		  
	    int SSL_PORT = 465; // Port for SSL
	 
	    int TSL_PORT = 587; // Port for TLS/STARTTLS
	 
	    String APP_EMAIL = "tranmanhhai.tq@gmail.com"; // your email
	 
	    String APP_PASSWORD = "xdlf dwsi uuir qddm"; // your password
	    
	    String RECEIVE_EMAIL = "alphayvietnam@gmail.com"; 
		
		
        // Get properties object
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", HOST_NAME);
        props.put("mail.smtp.socketFactory.port", SSL_PORT);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.port", SSL_PORT);
 
        // get Session
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(APP_EMAIL, APP_PASSWORD);
            }
        });
 
        // compose message
        try {
            MimeMessage message = new MimeMessage(session);
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(RECEIVE_EMAIL));
            message.setSubject(tieude);
            message.setText(noidung);
 
            // send message
            Transport.send(message);
 
            System.out.println("Message sent successfully");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		JavaMail javaMail = new JavaMail();
		javaMail.SendMail("12/12 test send main", "abcd 1234");
	}

}
