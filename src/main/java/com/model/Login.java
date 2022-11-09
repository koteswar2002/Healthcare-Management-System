package com.model;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class Login {
	
	 @NotNull(message="adminid should not be empty")
	private  int adminid;
	  @NotEmpty(message="password should not be empty")
	private String  password;
	public Login(int adminid, String password) {
		super();
		this.adminid = adminid;
		this.password = password;
	}
	public Login() {
		super();
	}
	public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
