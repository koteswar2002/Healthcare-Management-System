package com.dao;

import java.util.List;

import com.model.BranchRegister;

public interface BranchRegisterDaoIntf {

	void saveBranchRegister(BranchRegister branchRegister);

	List<BranchRegister> adminInfo();

	BranchRegister branchAdminById(int branchAdminId);


	void updateAdmin(BranchRegister branchRegister);

	void deleteAdminById(int branchAdminId);
	

}
