package com.abclabmanagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abclabmanagement.model.Admin;

@Repository("adminDao")
public interface AdminDao extends JpaRepository<Admin, Integer>  {
	
	Admin findByUsernameAndPassword(String username , String password);

}
