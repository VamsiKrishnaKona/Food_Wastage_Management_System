package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailSendingServiceImpl implements EmailSendingService
{
	@Autowired
    private JavaMailSender mailSender;
	
	@Override
	public void sendEmail(String toEmail, String subject, String body) 
	{
		 SimpleMailMessage message = new SimpleMailMessage();
	      message.setFrom("nithin.chiguru@gmail.com");
	      message.setTo(toEmail);
	      message.setText(body);
	      message.setSubject(subject);
	      
	      mailSender.send(message);
		
	}
	
}
