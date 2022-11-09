package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.BranchAdminRequestDaoIntf;
import com.model.BranchAdminRequest;

@Service
@Transactional

public class BranchAdminRequestServiceImpl implements BranchAdminRequestServiceIntf {

	@Autowired
	BranchAdminRequestDaoIntf bardao;

	public void saveBranchAdminRequest(BranchAdminRequest branchAdminRequest) {
		
		bardao.saveBranchAdminRequest(branchAdminRequest);

	}

	
	public List<BranchAdminRequest> branchAdminRequestDetails() {
		
		List<BranchAdminRequest>ls=bardao.branchAdminRequestDetails();
		return ls;
	}

}
