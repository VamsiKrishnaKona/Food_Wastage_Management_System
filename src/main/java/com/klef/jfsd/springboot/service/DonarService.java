package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Donar;

public interface DonarService
{
	public Donar DonarRegistration(Donar donar);
	public Donar DonarLoginVerification(String email,String password);
	public String getfullname(String email);
	public List<Donar> VerifyDuplicates(String email,String contactno);
	public int getdonarscount();
	public List<Donar> getDonar(String email);
	public void updateotp(String otp,String email);
	public String getotp(String email);
	public void updatepassword(String password,String email);
}
