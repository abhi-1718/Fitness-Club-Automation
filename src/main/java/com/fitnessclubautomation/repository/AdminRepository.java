package com.fitnessclubautomation.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.fitnessclubautomation.model.Admin;

public interface AdminRepository extends CrudRepository<Admin, Long> {
    @Query("select a from Admin a where a.adminEmail = ?1 and a.adminPassword = ?2")
    Admin login(String adminEmail, String adminPassword);


}
