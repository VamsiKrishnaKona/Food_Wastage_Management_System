package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Donar;
import com.klef.jfsd.springboot.repository.DonarRepository;

@Service
public class DonarServiceImpl implements DonarService
{
	@Autowired
	private DonarRepository donarRepository;
	
	@Override
	public Donar DonarRegistration(Donar donar) 
	{
		return donarRepository.save(donar);
	}

	@Override
	public Donar DonarLoginVerification(String email, String password) 
	{
		return donarRepository.DonarLoginVerification(email,password);
	}

	@Override
	public String getfullname(String email) 
	{
		return donarRepository.getfullname(email);
	}

	@Override
	public List<Donar> VerifyDuplicates(String email, String contactno)
	{
		return donarRepository.VerifyDuplicates(email, contactno); 
	}

	@Override
	public int getdonarscount()
	{
		return donarRepository.getdonarscount();
	}

	@Override
	public List<Donar> getDonar(String email) 
	{
		return donarRepository.getDonar(email); 
	}

	@Override
	public void updateotp(String otp, String email) 
	{
		donarRepository.SetOtp(otp,email);
	}

	@Override
	public String getotp(String email) 
	{
		return donarRepository.GetOtp(email);
	}

	@Override
	public void updatepassword(String password, String email) 
	{
		donarRepository.UpdatePassword(password,email);
	}
	
}
