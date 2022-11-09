package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
@Table(name="BRANCHADMIN_DATA")
public class BranchRegister {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer branchAdminId;
	@NotEmpty(message = "firstname should not be empty")
	private String firstName;
	@NotEmpty(message = "lastname should not be empty")
	private String lastName;
	@NotEmpty(message = "age should not be empty")
	private String age;
	@NotEmpty(message = "please select gender")
	private String gender;
	@NotEmpty(message = "contactnumber should not be empty")
	private String contactnumber;
	@NotEmpty(message = "city should not be empty")
	private String city;
	public Integer getBranchAdminId() {
		return branchAdminId;
	}
	public void setBranchAdminId(Integer branchAdminId) {
		this.branchAdminId = branchAdminId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContactnumber() {
		return contactnumber;
	}
	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	

}
