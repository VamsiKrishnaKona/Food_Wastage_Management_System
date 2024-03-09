package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Volunteer;
import com.klef.jfsd.springboot.repository.VolunteerRepository;

@Service
public class VolunteerServiceImpl implements VolunteerService
{
	@Autowired
	private VolunteerRepository volunteerRepository;  
	
	@Override
	public Volunteer AddingVolunteers(Volunteer volunteer) 
	{
		return volunteerRepository.save(volunteer);
	}
	
	@Override
	public Volunteer VolunteerLoginVerification(String email, String password) 
	{
		return volunteerRepository.VolunteerLoginVerification(email,password);
	}

	@Override
	public void SetBranch(String branch, String email) 
	{
		volunteerRepository.SetBranch(branch,email);
	}

	@Override
	public String getfullname(String email)
	{
		return volunteerRepository.getfullname(email);
	}

	@Override
	public List<Volunteer> VerifyDuplicates(String email, String contactno) 
	{
		return volunteerRepository.VerifyDuplicates(email,contactno);
	}

	@Override
	public String GetBranch(String email, String password) 
	{
		return volunteerRepository.GetBranch(email, password); 
	}


	@Override
	public int getid(String email) 
	{
		return volunteerRepository.getid(email);
	}

	@Override
	public List<Volunteer> getVolunteer(String email) 
	{
		return volunteerRepository.getVolunteer(email); 
	}

	@Override
	public void updateotp(String otp, String email) 
	{
		volunteerRepository.SetOtp(otp,email);
	}

	@Override
	public String getotp(String email) 
	{
		return volunteerRepository.GetOtp(email);
	}

	@Override
	public void updatepassword(String password, String email)
	{
		volunteerRepository.UpdatePassword(password,email);
	}
	

}