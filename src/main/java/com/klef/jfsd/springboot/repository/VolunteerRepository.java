package com.klef.jfsd.springboot.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.model.Volunteer;

@Repository
public interface VolunteerRepository extends CrudRepository<Volunteer,String>
{
	@Query("From Volunteer v where v.emailid=?1 and v.password=?2 or v.contactno=?1 and v.password=?2")
	public Volunteer VolunteerLoginVerification(String email,String password);
	
	@Transactional
	@Modifying
	@Query("update Volunteer v set v.branch=?1 where v.emailid=?2")
	public void SetBranch(String branch,String email);
	
	@Query("From Volunteer v where v.branch in (?1)")
	public List<Volunteer> viewbranchvolunteers(String[] adminchoosingvolunteerbranch);
	
	@Query("Select v.fullname from Volunteer v where v.emailid=?1 or v.contactno=?1")
	public String getfullname(String email);
	
	@Query("From Volunteer v where v.emailid=?1 or v.contactno=?2")
	public List<Volunteer> VerifyDuplicates(String email,String contactno);
	
	@Query("Select v.branch from Volunteer v where v.emailid=?1 and v.password=?2 or v.contactno=?1 and v.password=?2")
	public String GetBranch(String email,String password);
	
	@Query("Select v.id from Volunteer v where v.emailid=?1 or v.contactno=?1")
	public int getid(String email);
	
	@Query("From Volunteer v where v.emailid=?1")
	public List<Volunteer> getVolunteer(String email);
	
	@Transactional
	@Modifying
	@Query("update Volunteer v set v.otp=?1 where v.emailid=?2")
	public void SetOtp(String otp,String email);
	
	@Query("Select v.otp from Volunteer v where v.emailid=?1")
	public String GetOtp(String email);
	
	@Transactional
	@Modifying
	@Query("update Volunteer v set v.password=?1 where v.emailid=?2")
	public void UpdatePassword(String password,String email);
	
}
