package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "volunteer_table")
public class Volunteer 
{
	@Id
	@GeneratedValue
	private int id;
	@Column(nullable = false,unique = true,length = 200)
	private String emailid;
	@Column(nullable = false,length = 200)
	private String fullname;
	@Column(nullable = false,unique = true,length = 200)
	private String contactno;
	@Column(nullable = false,length = 200)
	private String password="volunteer";
	@Column(nullable = true,length = 200)
	private String branch;
	@Column(nullable = false,unique = true,length = 200)
	private String otp="0";
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}

}
