package com.service;

import java.util.List;

import com.model.BranchRegister;
import com.model.Register;

public interface BranchRegisterServiceIntf {

    
	void saveBranchRegister(BranchRegister branchRegister);

	List<BranchRegister> adminInfo();

	public BranchRegister branchAdminById(int branchAdminId);


	void updateAdmin(BranchRegister branchRegister);

	void deleteAdminById(int branchAdminId);

}
