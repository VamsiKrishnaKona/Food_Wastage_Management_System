package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Administrator;

@Repository
public interface AdministratorRepository extends CrudRepository<Administrator,String>
{
	@Query("From Administrator a where a.email=?1 and a.password=?2 or a.mobileno=?1 and a.password=?2")
	public Administrator AdminLoginVerification(String email,String password);
	
	@Query("Select a.fullname from Administrator a where a.email=?1 or a.mobileno=?1")
	public String getfullname(String email);

}
