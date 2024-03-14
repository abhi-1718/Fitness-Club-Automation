package com.fitnessclubautomation.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.fitnessclubautomation.model.Payment;

@Repository
public interface PaymentRepository extends CrudRepository<Payment, Long> {
}
