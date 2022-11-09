package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="ADMINDETAILS")
public class Register {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	//@NotEmpty(message = "adminid should not be empty")
	private Integer adminid;
	@NotEmpty(message = "firstname should not be empty")
	private String firstname;
	@NotEmpty(message = "lastname should not be empty")
	private String lastname;
	@NotNull(message = "age should not be empty")
	private Integer age;
	@NotEmpty(message = "please select gender")
	private String gender;
	@NotEmpty(message = "contactnumber should not be empty")
	private String contactnumber;
	@NotEmpty(message = "password should not be empty")
	@Size(min =5, max =15)
	private String password;
	public Integer getAdminid() {
		return adminid;
	}
	public void setAdminid(Integer adminid) {
		this.adminid = adminid;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}

	/*public Register() {
		super();
	}

	public Register(String firstname, String lastname, int age, String gender, String contactnumber, String adminid,
			String password) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.gender = gender;
		this.contactnumber = contactnumber;
		this.adminid = adminid;
		this.password = password;
	}*/

	
