package com.foodappbackend.project.repository;

import com.foodappbackend.project.model.Foods;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FoodsRepository extends JpaRepository<Foods,Long> {
    List<Foods> findByBestFoodTrue();

    List<Foods> findByTitleContainingIgnoreCase(String searchText);

    List<Foods> findByCategoryId(long categoryId);
}
