package com.klef.jfsd.springboot.service;

public interface EmailSendingService 
{
	public void sendEmail(String toEmail,String subject,String body);
}
