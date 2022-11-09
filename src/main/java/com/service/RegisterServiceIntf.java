package com.service;

import java.util.List;

import com.model.Login;
import com.model.Register;

public interface RegisterServiceIntf {

	public void saveRegister(Register register);
	//public int saveRegister(Register register);

	public boolean validateLogin(Register register);

	public List<Register> adminInfo();

/*	public List<Register> getUsers();*/

}
