package com.foodappbackend.project.repository;

import com.foodappbackend.project.model.Order;
import com.foodappbackend.project.model.OrderItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;
import java.util.List;

public interface OrderItemRepository extends JpaRepository<OrderItem,Long> {
}
