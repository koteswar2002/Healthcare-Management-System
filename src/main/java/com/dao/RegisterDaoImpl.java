package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Login;
import com.model.Register;

@Repository
public class RegisterDaoImpl implements RegisterDaoIntf {

	@Autowired
	SessionFactory sessionFactory;

	public void saveRegister(Register register) {
		sessionFactory.openSession().save(register);

	}
	
	/*public int saveRegister(Register register) {
		int validate= (int) sessionFactory.openSession().save(register);
		return validate;

	}*/

	public boolean validateLogin(Register register) {

		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Register RG where RG.adminid=:id and RG.password=:pass");
		query.setParameter("id", register.getAdminid());
		query.setParameter("pass", register.getPassword());

		if (query.uniqueResult() == null) {
			return false;
		} else {
			return true;
		}
	}

	public List<Register> adminInfo() {

		List<Register> ls = sessionFactory.openSession().createQuery("from Register").list();
		return ls;
	}
}

/*
 * @Autowired JdbcTemplate template; public void saveRegister(Register register)
 * { java.sql.Date sqlDate=new java.sql.Date(register.getDob().getTime());
 * template.update("insert into reg values('"+register.getUsername()+"','"+
 * register.getPassword()+"','"+register.getLanguage()+"','"+register.getGender(
 * )+"','"+sqlDate+"','"+register.getState()+"')");
 */
