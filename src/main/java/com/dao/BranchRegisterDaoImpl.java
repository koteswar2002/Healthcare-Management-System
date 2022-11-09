package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.BranchRegister;

@Repository

public class BranchRegisterDaoImpl implements BranchRegisterDaoIntf{

    @Autowired
	SessionFactory sessionFactory;
	public void saveBranchRegister(BranchRegister branchRegister) {
		sessionFactory.openSession().save(branchRegister);
		
	}
	
	public List<BranchRegister> adminInfo() {
		
		List<BranchRegister>ls=sessionFactory.openSession().createQuery("from BranchRegister").list();
		return ls;
	}

	public BranchRegister branchAdminById(int branchAdminId) {
		
		Session session=sessionFactory.getCurrentSession();
		BranchRegister branchRegister= (BranchRegister) session.get(BranchRegister.class,branchAdminId);
		return branchRegister;
	}

	public void updateAdmin(BranchRegister branchRegister) {
		
		Session session=sessionFactory.getCurrentSession();
		session.update(branchRegister);
		
	}

	public void deleteAdminById(int branchAdminId) {
		
		Session session=sessionFactory.getCurrentSession();
		BranchRegister br=(BranchRegister) session.byId(BranchRegister.class).load(branchAdminId);
		session.delete(br);
		
	}

	}

