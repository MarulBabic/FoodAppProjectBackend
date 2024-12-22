package com.foodappbackend.project.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "order_items")
public class OrderItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private long productId;
    private int quantity;
    private double price;
    private String imagePath;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;
}
