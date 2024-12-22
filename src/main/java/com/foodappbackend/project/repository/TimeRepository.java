package com.foodappbackend.project.repository;

import com.foodappbackend.project.model.Time;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TimeRepository extends JpaRepository<Time,Long> {
}
