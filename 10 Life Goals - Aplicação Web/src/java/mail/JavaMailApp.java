package mail;

import com.sun.org.apache.bcel.internal.generic.NEW;
import dao.PessoaDao;
import java.io.*;
import java.net.*;
import java.util.*;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.HashSet;
import java.util.Set;
import javax.mail.*;
import javax.activation.*;
import javax.mail.PasswordAuthentication;
import javax.mail.internet.*;

import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import model.Pessoa;

/**
 *
 * @author BRUNA MARIANA
 */

public class JavaMailApp {

    private PessoaDao pDao;
    private String email;
    private String erro;
    
    //Buscar email
    public Pessoa buscarEmail(String email) {
        try{
            System.out.println("try buscar email");
        pDao = new PessoaDao();
        return pDao.buscarEmail(email);
        } catch (Exception e) {
            System.out.println("catch bsucar email");
            throw new RuntimeException(e);
        }
    }

    public boolean enviarMail(String emailServer, String para, String assunto, String msg, String de) throws AddressException {
        Properties props = new Properties();
        
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "587");

        Session s = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("10lifegoals@gmail.com", "bbfe1234");
            }
        });

        try {
            MimeMessage message = new MimeMessage(s);
            message.setFrom(new InternetAddress(de));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(para));
            message.setHeader("content-type", "text/html");
            message.setSubject((assunto));
            message.setContent(msg, "text/html; charset=utf-8");

            Transport.send(message);
                       
      
            return true;
        } catch (MessagingException e) {
            System.out.println("catch javamail");
            throw new RuntimeException(e);
        }
    }
}
