package com.foodappbackend.project.repository;

import com.foodappbackend.project.model.Price;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PriceRepository extends JpaRepository<Price,Long> {
}
