package com.dao;

import java.util.List;

import com.model.BranchAdminRequest;

public interface BranchAdminRequestDaoIntf {

	void saveBranchAdminRequest(BranchAdminRequest branchAdminRequest);

	List<BranchAdminRequest> branchAdminRequestDetails();

}
