package com.foodappbackend.project.controller;

import com.foodappbackend.project.model.Category;
import com.foodappbackend.project.model.Foods;
import com.foodappbackend.project.service.FoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/foods")
public class FoodsController {

    @Autowired
    private FoodsService foodsService;

    @GetMapping
    public List<Foods> getAllFoods(){
        return foodsService.getAllFoods();
    }

    @GetMapping("/{id}")
    public Foods getFoodById(@PathVariable Long id){
        return foodsService.getFoodById(id);
    }

    @GetMapping("/best")
    public List<Foods> getBestFoods(){
        return foodsService.getBestFoods();
    }

    @GetMapping("/search")
    public List<Foods> searchFoods(@RequestParam("text") String searchText){
        return foodsService.searchFoods(searchText);
    }

    @GetMapping("/category")
    public List<Foods> getFoodsByCategory(@RequestParam("categoryId") long categoryId) {
        return foodsService.getFoodsByCategory(categoryId);
    }


    @PostMapping
    public ResponseEntity<Foods> createFood(@RequestBody Foods food){
        Foods savedFoods = foodsService.addFood(food);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedFoods);
    }

    @DeleteMapping("/{id}")
    public void deleteFoodById(@PathVariable Long id){
        foodsService.deleteFoodById(id);
    }
}
