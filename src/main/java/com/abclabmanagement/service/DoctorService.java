package com.abclabmanagement.service;

import java.util.List;

import com.abclabmanagement.model.Doctor;

public interface DoctorService {
	Doctor addDoctor(Doctor doctor);
	void deleteDoctorById(Integer id);
	Doctor getDoctorById(Integer id);
	Doctor updateDoctor(Doctor doctor);
	Doctor loginDoctor(String username, String password);
	List<Doctor> getAllDoctors();
	Long getDoctorsTotalCounts();
	Long getDoctorsCountByDate(String registereddate);
	List<Doctor> getDoctorsByName(String doctorName);
	
}
