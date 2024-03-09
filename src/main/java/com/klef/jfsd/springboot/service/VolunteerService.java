package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.model.Volunteer;

public interface VolunteerService
{
	public Volunteer AddingVolunteers(Volunteer volunteer);
	public Volunteer VolunteerLoginVerification(String email,String password);
	public void SetBranch(String branch,String email);
	public String GetBranch(String email,String password);
	public String getfullname(String email);
	public List<Volunteer> VerifyDuplicates(String email,String contactno);
	public int getid(String email);
	public List<Volunteer> getVolunteer(String email);
	public void updateotp(String otp,String email);
	public String getotp(String email);
	public void updatepassword(String password,String email);
}
