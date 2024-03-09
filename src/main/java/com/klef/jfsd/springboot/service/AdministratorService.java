package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Administrator;
import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.model.Volunteer;

public interface AdministratorService 
{
	public Administrator AdminLoginVerification(String email,String password);
	public List<Manager> viewallbranchmanagers();
	public List<Volunteer> viewbranchvolunteers(String[] adminchoosingvolunteerbranch);
	public String getfullname(String email);
}
