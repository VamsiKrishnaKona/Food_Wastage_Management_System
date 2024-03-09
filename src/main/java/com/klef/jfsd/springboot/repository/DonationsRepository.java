package com.klef.jfsd.springboot.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Donations;

@Repository
public interface DonationsRepository extends CrudRepository<Donations,String>
{
	@Query("From Donations d where d.branch=?1")
	public List<Donations> findAllDonations(String branch);
	
	@Transactional
	@Modifying
	@Query("update Donations d set d.volunteer=?1 where d.id=?2")
	public void SetVolunteer(String volunteername,int id);
	
	@Query("From Donations d where d.volunteer=?1 - ?2")
	public List<Donations> findAllOrders(int id,String fullname);
	
	@Transactional
	@Modifying
	@Query("update Donations d set d.status='Completed' where d.id=?1")
	public void MarkCompleted(int id);
	
	@Transactional
	@Modifying
	@Query("update Donations d set d.status='Pending' where d.id=?1")
	public void MarkPending(int id);
	
	@Query("From Donations d where d.volunteer=?1 - ?2 and d.status='Completed'")
	public List<Donations> findCompletedOrders(int id,String fullname);
	
	@Query("Select count(*) from Donations ")
	public int getdonationscount();
}
