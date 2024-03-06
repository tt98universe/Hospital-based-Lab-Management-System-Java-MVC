package com.abclabmanagement.service;

import java.util.List;

import com.abclabmanagement.model.Patient;

public interface PatientService {
	Patient addPatient(Patient patient);
	void deletePatientById(Integer id);
	Patient getPatientById(Integer id);
	Patient updatePatient(Patient patient);
	List<Patient> getAllPatients();
	List<Patient> getPatientsIdByPatientName(String patientname);
	Long getPatientsCount();
	Long getPatientsCountByDate(String registerDate);
	List<Patient> getTop5PatientAddedByDate(String date);
}
