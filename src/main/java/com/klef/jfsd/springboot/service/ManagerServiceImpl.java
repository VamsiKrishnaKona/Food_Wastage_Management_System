package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.model.Volunteer;
import com.klef.jfsd.springboot.repository.ManagerRepository;

@Service
public class ManagerServiceImpl implements ManagerService
{
	@Autowired
	private ManagerRepository managerRepository;
	
	@Override
	public Manager AddingManagers(Manager manager) 
	{
		return managerRepository.save(manager);
	}

	@Override
	public Manager ManagerLoginVerification(String email, String password) 
	{
		return managerRepository.ManagerLoginVerification(email, password);  
	}

	@Override
	public String GetBranch(String email, String password)
	{
		return managerRepository.GetBranch(email, password);  
	}

	@Override
	public List<Volunteer> ManagerViewingHisVolunteers(String branch) 
	{
		return managerRepository.ManagerViewingHisVolunteers(branch);  
	}

	@Override
	public String getfullname(String email) 
	{
		return managerRepository.getfullname(email); 
	}

	@Override
	public List<Manager> VerifyDuplicates(String email, String contactno,String branch)
	{
		return managerRepository.VerifyDuplicates(email, contactno,branch); 
	}

	@Override
	public List<Volunteer> viewallvolunteers(String branch)
	{
		return (List<Volunteer>) managerRepository.findAllVolunteers(branch);
	}

	@Override
	public List<Manager> getManager(String email) 
	{
		return managerRepository.getManager(email); 
	}

	@Override
	public void updateotp(String otp,String email) 
	{
		managerRepository.SetOtp(otp,email);		
	}

	@Override
	public String getotp(String email) 
	{
		return managerRepository.GetOtp(email);
	}

	@Override
	public void updatepassword(String password, String email)
	{
		managerRepository.UpdatePassword(password,email);
		
	}
}
