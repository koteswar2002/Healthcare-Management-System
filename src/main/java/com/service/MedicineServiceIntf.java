package com.service;

import java.util.List;

import com.model.MedicineRecord;

public interface MedicineServiceIntf {

	void addMedicine(MedicineRecord medicineRecord);

	List<MedicineRecord> medicineInfo();

	MedicineRecord medicineRecordById(int medicineId);

	void updateMedicine(MedicineRecord medicineRecord);

	void deleteAdminById(int medicineId);

}
