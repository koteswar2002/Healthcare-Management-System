package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.BranchAdminRequest;

@Repository

public class BranchAdminRequestDaoImpl implements BranchAdminRequestDaoIntf {

	@Autowired
	SessionFactory sessionFactory;

	public void saveBranchAdminRequest(BranchAdminRequest branchAdminRequest) {

		sessionFactory.openSession().save(branchAdminRequest);
	}

	
	public List<BranchAdminRequest> branchAdminRequestDetails() {
		
		 List<BranchAdminRequest> ls=sessionFactory.openSession().createQuery("from BranchAdminRequest").list();
		return ls;
	}

}
