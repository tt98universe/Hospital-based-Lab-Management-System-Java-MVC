package com.abclabmanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.abclabmanagement.model.Pharmacist;
import com.abclabmanagement.model.Receptionist;

@Repository("pharmacistDao")
public interface PharmacistDao extends JpaRepository<Pharmacist, Integer> {
	Pharmacist findByUsernameAndPassword(String username , String password);
	@Query(value = "SELECT count(p) FROM Pharmacist p")
    public Long getTotalCount();
	List<Pharmacist> findByFirstnameContainingIgnoreCase(String pharmacistName);
	Long countByRegisterdate(String registeredDate);
}
