package com.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BranchRegisterDaoIntf;
import com.model.BranchRegister;
import com.model.Register;

@Service
@Transactional
public class BranchRegisterServiceImpl implements BranchRegisterServiceIntf {

    @Autowired
	BranchRegisterDaoIntf brdao;
	public void saveBranchRegister(BranchRegister branchRegister) {
		brdao.saveBranchRegister(branchRegister);
		
	}

	public List<BranchRegister> adminInfo() {
		List<BranchRegister> ls=brdao.adminInfo();
		return ls;
	}
	
	public BranchRegister branchAdminById(int branchAdminId) {
		
		BranchRegister branchRegister=brdao.branchAdminById(branchAdminId);
		return branchRegister;
	}

	
	public void updateAdmin(BranchRegister branchRegister) {
		
		brdao.updateAdmin(branchRegister);
		
	}

	public void deleteAdminById(int branchAdminId) {
		
		brdao.deleteAdminById(branchAdminId);
		
	}



	
	
}
