package com.service;

import java.util.List;

import com.model.BranchAdminRequest;

public interface BranchAdminRequestServiceIntf {

	void saveBranchAdminRequest(BranchAdminRequest branchAdminRequest);

	List<BranchAdminRequest> branchAdminRequestDetails();

}
