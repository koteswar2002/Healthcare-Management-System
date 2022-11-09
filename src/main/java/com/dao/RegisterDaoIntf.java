package com.dao;

import java.util.List;

import com.model.Login;
import com.model.Register;

public interface RegisterDaoIntf {

	void saveRegister(Register register);
	/*int saveRegister(Register register);*/
	/*List<Register> getUsers();*/

	 boolean validateLogin(Register register);

	List<Register> adminInfo();

}
