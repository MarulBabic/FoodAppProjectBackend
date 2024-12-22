package com.foodappbackend.project.repository;

import com.foodappbackend.project.model.Location;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LocationRepository extends JpaRepository<Location,Long> {
}
