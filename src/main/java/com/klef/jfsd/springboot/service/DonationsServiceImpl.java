package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Donations;
import com.klef.jfsd.springboot.repository.DonationsRepository;

@Service
public class DonationsServiceImpl implements DonationsService
{
	@Autowired
	private DonationsRepository donationsRepository;
	
	@Override
	public Donations DonationsFormSubmission(Donations donations) 
	{
		return donationsRepository.save(donations);
	}

	@Override
	public List<Donations> viewalldonations(String branch) 
	{
		return (List<Donations>) donationsRepository.findAllDonations(branch);
	}

	@Override
	public void SetVolunteer(String volunteername, int id) 
	{
		donationsRepository.SetVolunteer(volunteername,id);		
	}

	@Override
	public List<Donations> viewallorders(int id, String fullname) 
	{
		return (List<Donations>) donationsRepository.findAllOrders(id,fullname);
	}

	@Override
	public void MarkCompleted(int id) 
	{
		donationsRepository.MarkCompleted(id);		
	}
	
	@Override
	public void MarkPending(int id) 
	{
		donationsRepository.MarkPending(id);		
	}

	@Override
	public List<Donations> ViewCompletedOrders(int id, String fullname)
	{
		return (List<Donations>) donationsRepository.findCompletedOrders(id,fullname);
	}

	@Override
	public int getdonationscount() 
	{
		return donationsRepository.getdonationscount();
	}
}
