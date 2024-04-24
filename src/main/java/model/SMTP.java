package model;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

import java.util.Date;
import java.util.Properties;



public class SMTP{

    private String email;
    private String password;
    Properties prop = new Properties();
    Session session = null;

    private void setProp() {

        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "465");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.socketFactory.port", "465");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        prop.put("mail.debug", "true");

    }

    private void startSession(String email,String password) {

        System.out.println(email+password);
        session = Session.getInstance(prop,
                new jakarta.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(email, password);
                    }
                });
    }

    public SMTP(){
        email = "noreply.noirell@gmail.com";
        password = "ktad tmne vehn ysuk";

        this.setProp();
        this.startSession(email,password);

    }

    public SMTP(String email, String password){

        this.email = email;
        this.password = password;

        this.setProp();
        this.startSession(email,password);
    }

    public void sendEmail(String emails, String subject, String text) {

        MimeMessage msg = writeMessage(emails,subject,text);

        try {
            Transport.send(msg);
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }


    private MimeMessage writeMessage(String emails, String subject, String text) {

        MimeMessage message = new MimeMessage(this.session);
        try {

            message.addHeader("Content-type", "text/HTML; charset=UTF-8");
            message.addHeader("format", "flowed");
            message.addHeader("Content-Transfer-Encoding", "8bit");
            message.setFrom(new InternetAddress(this.email));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(emails)
            );
            message.setReplyTo(InternetAddress.parse(emails, false));
            message.setSubject(subject);
            message.setText(text);
            message.setSentDate(new Date());

        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }


        return message;
    }

}