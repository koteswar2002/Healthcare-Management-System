package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.MedicineRecord;

@Repository
public class MedicineDaoImpl implements MedicineDaoIntf {

	@Autowired
	SessionFactory sessionFactory;
	public void addMedicine(MedicineRecord medicineRecord) {
		
		sessionFactory.openSession().save(medicineRecord);		
	}
	
	public List<MedicineRecord> medicineInfo() {
		
		List<MedicineRecord> ls=sessionFactory.openSession().createQuery("from MedicineRecord").list();
		return ls;
	}

	public MedicineRecord medicineRecordById(int medicineId) {
		
		Session session=sessionFactory.getCurrentSession();
		MedicineRecord medicineRecord= (MedicineRecord) session.get(MedicineRecord.class, medicineId);
		return medicineRecord;
	}

	public void updateMedicine(MedicineRecord medicineRecord) {
		
		Session session=sessionFactory.getCurrentSession();
		session.update(medicineRecord);
		
		
	}

	public void deleteAdminById(int medicineId) {
		
		Session session=sessionFactory.getCurrentSession();
		MedicineRecord mr=(MedicineRecord) session.byId(MedicineRecord.class).load(medicineId);
		session.delete(mr);
		
	}

}
