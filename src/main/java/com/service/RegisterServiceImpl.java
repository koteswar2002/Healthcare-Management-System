package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.RegisterDaoIntf;
import com.model.Login;
import com.model.Register;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterServiceIntf {

	@Autowired
	RegisterDaoIntf dao;

	public void saveRegister(Register register) {

		dao.saveRegister(register);

	}
	
	/*public int saveRegister(Register register) {

		int validate=dao.saveRegister(register);
		return validate;

	}*/

	public boolean validateLogin(Register register) {

		boolean validate = dao.validateLogin(register);
		return validate;
	}

	
	public List<Register> adminInfo() {

		List<Register> ls=dao.adminInfo();
		return ls;
	}

	/*
	 * public List<Register> getUsers() {
	 *  List<Register> ls=dao.getUsers(); 
	 *  return ls;
	 * 
	 * 
	 * }
	 */
}
