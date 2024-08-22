package com.foodappbackend.project.service;

import com.foodappbackend.project.DTO.OrderItemRequest;
import com.foodappbackend.project.DTO.OrderRequest;
import com.foodappbackend.project.model.Foods;
import com.foodappbackend.project.model.Order;
import com.foodappbackend.project.model.OrderItem;
import com.foodappbackend.project.repository.FoodsRepository;
import com.foodappbackend.project.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class OrderService {

    private final OrderRepository orderRepository;
    private final FoodsRepository foodsRepository;

    @Autowired
    public OrderService(OrderRepository orderRepository,FoodsRepository foodsRepository){
        this.orderRepository=orderRepository;
        this.foodsRepository=foodsRepository;
    }

    public void saveOrder(Order order){
        for(OrderItem item : order.getItems()){
            item.setOrder(order);

            Optional<Foods> food = foodsRepository.findById(item.getProductId());
            food.ifPresent(f -> item.setImagePath(f.getImagePath()));
        }
        orderRepository.save(order);
    }

    public List<OrderRequest> getAllOrders() {
        List<Order> orders = orderRepository.findAll();
        return orders.stream().map(this::convertToOrderRequest).collect(Collectors.toList());
    }

    public List<OrderRequest> getOrdersFromLast24Hours() {
        LocalDateTime last24Hours = LocalDateTime.now().minusHours(24);
        List<Order> orders = orderRepository.findOrdersFromLast24Hours(last24Hours);
        return orders.stream()
                .map(this::convertToOrderRequest)
                .collect(Collectors.toList());
    }

    public void updateOrder(long id, OrderRequest orderRequest) {
        Optional<Order> existingOrderOpt = orderRepository.findById(id);
        if (existingOrderOpt.isPresent()) {
            Order order = existingOrderOpt.get();
            order.setStatus(orderRequest.getStatus());
            order.setTotalAmount(orderRequest.getTotalAmount());

            // Clear existing items
            order.getItems().clear();

            // Add updated items
            for (OrderItemRequest item : orderRequest.getItems()) {
                OrderItem newItem = new OrderItem();
                newItem.setProductId(item.getProductId());
                newItem.setQuantity(item.getQuantity());
                newItem.setPrice(item.getPrice());
                newItem.setOrder(order); // Set the order reference
                order.getItems().add(newItem);
            }

            // Save the updated order
            orderRepository.save(order);
        } else {
            throw new NoSuchElementException("Order with ID " + id + " not found.");
        }
    }

    public void acceptOrder(long orderId) {
        // Dobavljanje postojeće narudžbe
        Optional<Order> existingOrderOpt = orderRepository.findById(orderId);
        if (existingOrderOpt.isPresent()) {
            Order order = existingOrderOpt.get();
            order.setStatus("Accepted");

            // Spremanje ažurirane narudžbe
            orderRepository.save(order);
        } else {
            throw new NoSuchElementException("Order with ID " + orderId + " not found.");
        }
    }

    private OrderRequest convertToOrderRequest(Order order) {
        OrderRequest request = new OrderRequest();
        request.setOrderId(order.getId());
        request.setUserId(order.getUserId());
        request.setTotalAmount(order.getTotalAmount());
        request.setStatus(order.getStatus());
        request.setItems(order.getItems().stream().map(item -> {
            OrderItemRequest itemRequest = new OrderItemRequest();
            itemRequest.setProductId(item.getProductId());
            itemRequest.setQuantity(item.getQuantity());
            itemRequest.setPrice(item.getPrice());

            Foods food = foodsRepository.findById(item.getProductId()).orElse(null);
            if (food != null) {
                itemRequest.setImagePath(food.getImagePath());
            }

            Optional<Foods> foods = foodsRepository.findById(item.getProductId());
            itemRequest.setTitle(foods.map(Foods::getTitle).orElse("Unknown"));

            return itemRequest;
        }).collect(Collectors.toList()));
        return request;
    }
}
