package com.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.MedicineDaoIntf;
import com.model.MedicineRecord;

@Service
@Transactional
public class MedicineServiceImpl implements MedicineServiceIntf{

	@Autowired
	MedicineDaoIntf mdao;
	
	public void addMedicine(MedicineRecord medicineRecord) {
		
		mdao.addMedicine(medicineRecord);
		
	}

	public List<MedicineRecord> medicineInfo() {
		
		List<MedicineRecord> ls=mdao.medicineInfo();
		return ls;
	}

	public MedicineRecord medicineRecordById(int medicineId) {

		MedicineRecord medicineRecord=mdao.medicineRecordById(medicineId);
		return medicineRecord;
	}

	public void updateMedicine(MedicineRecord medicineRecord) {
		
		mdao.updateMedicine(medicineRecord);
		
	}

	public void deleteAdminById(int medicineId) {
		mdao.deleteAdminById(medicineId);
		
	}

	

}
