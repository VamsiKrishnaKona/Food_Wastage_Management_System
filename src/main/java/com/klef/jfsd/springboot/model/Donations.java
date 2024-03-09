package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "donations_table")
public class Donations 
{
	@Id
	@GeneratedValue
	private int id;
	@Column(nullable = false,length = 200) 
	private String fullname;
	@Column(nullable = false,unique = false,length = 200)
	private String contactno;
	@Column(nullable = false,length = 200)
	private String pickuptime;
	@Column(nullable = false,length = 200)
	private String pickuplocation;
	@Column(nullable = false,length = 200)
	private String branch;
	@Column(nullable = false,length = 200)
	private String donationcategory;
	@Column(nullable = false,length = 200,columnDefinition = "varchar(200) default 'Pending'")
	private String status="Pending";
	@Column(nullable = false,length = 200,columnDefinition = "varchar(200) default 'Not Assigned'")
	private String volunteer="Not Assigned";
	
	public int getId() {
		return id;  
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPickuptime() {
		return pickuptime;
	}
	public void setPickuptime(String pickuptime) {
		this.pickuptime = pickuptime;
	}
	public String getPickuplocation() {
		return pickuplocation;
	}
	public void setPickuplocation(String pickuplocation) {
		this.pickuplocation = pickuplocation;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getDonationcategory() {
		return donationcategory;
	}
	public void setDonationcategory(String donationcategory) {
		this.donationcategory = donationcategory;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getVolunteer() {
		return volunteer;
	}
	public void setVolunteer(String volunteer) {
		this.volunteer = volunteer;
	}
	
	
	
	
	
}
