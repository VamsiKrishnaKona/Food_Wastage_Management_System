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
public interface ManagerRepository extends CrudRepository<Manager,String>
{
	@Query("From Manager m where m.emailid=?1 and m.password=?2 or m.contactno=?1 and m.password=?2")
	public Manager ManagerLoginVerification(String email,String password);
	
	@Query("Select m.branch from Manager m where m.emailid=?1 and m.password=?2 or m.contactno=?1 and m.password=?2")
	public String GetBranch(String email,String password);
	
	@Query("From Volunteer v where v.branch=?1")
	public List<Volunteer> ManagerViewingHisVolunteers(String branch);
	
	@Query("Select m.fullname from Manager m where m.emailid=?1 or m.contactno=?1")
	public String getfullname(String email);
	
	@Query("From Manager m where m.emailid=?1 or m.contactno=?2 or branch=?3")
	public List<Manager> VerifyDuplicates(String email,String contactno,String branch);
	
	@Query("From Volunteer v where v.branch=?1")
	public List<Volunteer> findAllVolunteers(String branch);
	
	@Query("From Manager m where m.emailid=?1")
	public List<Manager> getManager(String email);
	
	@Transactional
	@Modifying
	@Query("update Manager m set m.otp=?1 where m.emailid=?2")
	public void SetOtp(String otp,String email);
	
	@Query("Select m.otp from Manager m where m.emailid=?1")
	public String GetOtp(String email);
	
	@Transactional
	@Modifying
	@Query("update Manager m set m.password=?1 where m.emailid=?2")
	public void UpdatePassword(String password,String email);
}
