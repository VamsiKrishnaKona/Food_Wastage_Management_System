package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.model.Volunteer;

public interface ManagerService 
{
	public Manager AddingManagers(Manager manager);
	public Manager ManagerLoginVerification(String email,String password);
	public String GetBranch(String email,String password);
	public List<Volunteer> ManagerViewingHisVolunteers(String branch);
	public String getfullname(String email);
	public List<Manager> VerifyDuplicates(String email,String contactno,String branch);
	public List<Volunteer> viewallvolunteers(String branch);
	public List<Manager> getManager(String email);
	public void updateotp(String otp,String email);
	public String getotp(String email);
	public void updatepassword(String password,String email);
}
