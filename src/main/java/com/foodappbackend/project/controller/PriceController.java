package com.foodappbackend.project.controller;

import com.foodappbackend.project.model.Location;
import com.foodappbackend.project.model.Price;
import com.foodappbackend.project.service.LocationService;
import com.foodappbackend.project.service.PriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/price")
public class PriceController {

    @Autowired
    private PriceService priceService;

    @GetMapping
    public List<Price> getAllPrices(){
        return priceService.getAllPrices();
    }

    @GetMapping("/{id}")
    public Price getPriceById(@PathVariable Long id){
        return priceService.getPriceById(id);
    }

    @PostMapping
    public ResponseEntity<Price> addPrice(@RequestBody Price price){
       Price savedPrice = priceService.addPrice(price);
       return ResponseEntity.status(HttpStatus.CREATED).body(savedPrice);
    }

    @DeleteMapping("/{id}")
    public void deletePrice(@PathVariable Long id){
        priceService.deletePrice(id);
    }
}
