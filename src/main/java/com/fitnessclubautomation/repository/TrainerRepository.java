package com.fitnessclubautomation.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.fitnessclubautomation.model.Trainer;

@Repository
public interface TrainerRepository extends CrudRepository<Trainer, Long> {
}
