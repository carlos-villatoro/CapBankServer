package com.capbank.capbankserver.config;

import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

public class MailConfig {

    @Bean
    public static JavaMailSenderImpl getMailConfig(){
        JavaMailSenderImpl emailConfig = new JavaMailSenderImpl();

        Properties props = emailConfig.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enabled", "true");
        props.put("mail.debug", "true"); // turn off for live deploy

        // set mail creds
        emailConfig.setHost("smtp.gmail.com");
        emailConfig.setPort(25);
        emailConfig.setUsername("capbank425@gmail.com");
        emailConfig.setPassword("ihkoclhledvwgnih");

        return emailConfig;
    }
}
