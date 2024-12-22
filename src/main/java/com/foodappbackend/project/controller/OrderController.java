package com.foodappbackend.project.controller;

import com.foodappbackend.project.DTO.OrderRequest;
import com.foodappbackend.project.model.Order;
import com.foodappbackend.project.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.NoSuchElementException;

@RestController
@RequestMapping("/api/orders")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping
    public ResponseEntity<Void> placeOrder(@RequestBody Order order){
        orderService.saveOrder(order);
        return ResponseEntity.ok().build();
    }

    @GetMapping
    public ResponseEntity<List<OrderRequest>> getOrders() {
        List<OrderRequest> orders = orderService.getAllOrders();
        return ResponseEntity.ok(orders);
    }

    @GetMapping("/recent")
    public ResponseEntity<List<OrderRequest>> getRecentOrders() {
        List<OrderRequest> orders = orderService.getOrdersFromLast24Hours();
        return ResponseEntity.ok(orders);
    }

    @GetMapping("/accepted")
    public ResponseEntity<List<OrderRequest>> getAcceptedOrdersFromLast24Hours() {
        List<OrderRequest> acceptedOrders = orderService.getAcceptedOrdersFromLast24Hours();
        return ResponseEntity.ok(acceptedOrders);
    }

    @PostMapping("/{id}")
    public ResponseEntity<Void> updateOrder(@PathVariable long id, @RequestBody OrderRequest orderRequest) {
        orderService.updateOrder(id, orderRequest);
        return ResponseEntity.ok().build();
    }

    @PutMapping("/{orderId}/accept")
    public ResponseEntity<Void> acceptOrder(@PathVariable("orderId") long orderId) {
        try {
            orderService.acceptOrder(orderId);
            return ResponseEntity.ok().build(); // Vraća HTTP status 200 ako je uspješno
        } catch (NoSuchElementException e) {
            return ResponseEntity.notFound().build(); // Vraća HTTP status 404 ako narudžba nije pronađena
        }
    }

    @PutMapping("/{orderId}/ontheway")
    public ResponseEntity<Void> markOrderAsOnTheWay(@PathVariable("orderId") long orderId){
        try{
            orderService.markOrderAsOnTheWay(orderId);
            return ResponseEntity.ok().build();
        }catch (NoSuchElementException e){
            return ResponseEntity.notFound().build();
        }
    }
}
