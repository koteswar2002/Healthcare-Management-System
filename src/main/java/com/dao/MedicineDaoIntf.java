package com.dao;

import java.util.List;

import com.model.MedicineRecord;

public interface MedicineDaoIntf {

	void addMedicine(MedicineRecord medicineRecord);

	List<MedicineRecord> medicineInfo();

	MedicineRecord medicineRecordById(int medicineId);

	void updateMedicine(MedicineRecord medicineRecord);

	void deleteAdminById(int medicineId);

}
