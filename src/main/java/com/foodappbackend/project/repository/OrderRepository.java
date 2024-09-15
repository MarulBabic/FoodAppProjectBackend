package com.foodappbackend.project.repository;

import com.foodappbackend.project.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;
import java.util.List;

public interface OrderRepository extends JpaRepository<Order,Long> {
    @Query("SELECT o FROM Order o WHERE o.createdAt >= :last24Hours")
    List<Order> findOrdersFromLast24Hours(@Param("last24Hours") LocalDateTime last24Hours);

    List<Order> findByStatus(String status);

    @Query("SELECT o FROM Order o WHERE o.status = :status AND o.createdAt >= :last24Hours")
    List<Order> findAcceptedOrdersFromLast24Hours(@Param("last24Hours") LocalDateTime last24Hours, @Param("status") String status);
}
