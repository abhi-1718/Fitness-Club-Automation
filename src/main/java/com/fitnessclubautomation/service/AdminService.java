package com.fitnessclubautomation.service;

import com.fitnessclubautomation.model.Admin;
import com.fitnessclubautomation.repository.AdminRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    @Autowired
    AdminRepository adminRepository;

    public Admin getAdmin(Long adminId) {
        return adminRepository.findById(adminId).get();
    }

    public Admin login(String adminEmail, String adminPassword) {
        Admin admin = adminRepository.login(adminEmail, adminPassword);
        return admin;
    }
}
