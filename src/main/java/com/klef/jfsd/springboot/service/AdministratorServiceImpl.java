package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Administrator;
import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.model.Volunteer;
import com.klef.jfsd.springboot.repository.AdministratorRepository;
import com.klef.jfsd.springboot.repository.ManagerRepository;
import com.klef.jfsd.springboot.repository.VolunteerRepository;

@Service
public class AdministratorServiceImpl implements AdministratorService
{
	@Autowired
	private AdministratorRepository administratorRepository;
	
	@Autowired
	private ManagerRepository managerRepository;
	
	@Autowired
	private VolunteerRepository volunteerRepository;
	
	@Override
	public Administrator AdminLoginVerification(String email, String password) 
	{
		return administratorRepository.AdminLoginVerification(email, password);  
	}

	@Override
	public List<Manager> viewallbranchmanagers()
	{
		return (List<Manager>) managerRepository.findAll();

	}

	@Override
	public List<Volunteer> viewbranchvolunteers(String[] adminchoosingvolunteerbranch) 
	{
		return (List<Volunteer>) volunteerRepository.viewbranchvolunteers(adminchoosingvolunteerbranch);
	}

	@Override
	public String getfullname(String email) 
	{		
		return administratorRepository.getfullname(email);  
	}

}
