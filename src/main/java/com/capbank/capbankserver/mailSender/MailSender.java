package com.capbank.capbankserver.mailSender;

import com.capbank.capbankserver.config.MailConfig;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

public class MailSender {

    public static void htmlEmailSender(String from, String to, String subject, String body) throws MessagingException {
//        creates status notification
        JavaMailSender sender = MailConfig.getMailConfig();
        MimeMessage message = sender.createMimeMessage();
        MimeMessageHelper htmlMessage = new MimeMessageHelper(message, true);

        // set mail props
        htmlMessage.setTo(to);
        htmlMessage.setFrom(from);
        htmlMessage.setSubject(subject);
        htmlMessage.setText(body, true); // send the email html as the msg

        //send msg
        sender.send(message);

    }
}
