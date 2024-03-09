package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Donations;

public interface DonationsService 
{
	public Donations DonationsFormSubmission(Donations donations);
	public List<Donations> viewalldonations(String branch);
	public void SetVolunteer(String volunteer,int id);
	public List<Donations> viewallorders(int id,String fullname);
	public void MarkCompleted(int id);
	public void MarkPending(int id);
	public List<Donations> ViewCompletedOrders(int id,String fullname);
	public int getdonationscount();
}
