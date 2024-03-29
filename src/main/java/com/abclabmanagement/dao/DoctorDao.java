package com.abclabmanagement.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.abclabmanagement.model.Doctor;
import com.abclabmanagement.model.Medicine;

@Repository("doctorDao")
public interface DoctorDao extends JpaRepository<Doctor, Integer> {
	Doctor findByUsernameAndPassword(String username , String password);
	List<Doctor> findByFirstname(String doctorName);
	@Query(value = "SELECT count(d) FROM Doctor d")
    public Long getTotalCount();
	List<Doctor> findByFirstnameContainingIgnoreCase(String doctorName);
	Long countByRegisterdate(String registeredDate);
}
