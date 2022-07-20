package com.capbank.capbankserver.config;

import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

public class MailConfig {

    @Bean
    public static JavaMailSenderImpl getMailConfig(){
        JavaMailSenderImpl emailConfig = new JavaMailSenderImpl();

        Properties props = emailConfig.getJavaMailProperties();
        props.put("mail.smtp.starttls.enabled", "true");
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.debug", "true"); // turn off for live deploy

        // set mail creds
        emailConfig.setHost("smtp.mailtrap.io");
        emailConfig.setPort(2525);
        emailConfig.setUsername("82e4ee364ec23f");
        emailConfig.setPassword("47606b2fd5b2c1");
//        emailConfig.setPassword("ihkoclhledvwgnih");

//        play.mailer {
//  host = "smtp.mailtrap.io"
//  port = 2525
//  ssl = no
//  tls = yes
//  user = "82e4ee364ec23f"
//  password = "47606b2fd5b2c1"
//}

        return emailConfig;
    }
}
