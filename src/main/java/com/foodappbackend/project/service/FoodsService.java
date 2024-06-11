package com.foodappbackend.project.service;

import com.foodappbackend.project.model.Foods;
import com.foodappbackend.project.repository.FoodsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

@Service
public class FoodsService {

    private final FoodsRepository foodsRepository;

    @Autowired
    public FoodsService(FoodsRepository foodsRepository) {
        this.foodsRepository = foodsRepository;
    }

    public List<Foods> getAllFoods(){
        return foodsRepository.findAll();
    }

    public Foods addFood(Foods food){
        return foodsRepository.save(food);
    }

    public Foods getFoodById(Long id) {
        Optional<Foods> foodOptional = foodsRepository.findById(id);
        return foodOptional.orElseThrow(() -> new NoSuchElementException("Food with id " + id + " not found"));
    }

    public void deleteFoodById(Long id){
        if (!foodsRepository.existsById(id)) {
            throw new NoSuchElementException("Food with id " + id + " not found");
        }
        foodsRepository.deleteById(id);
    }

    public List<Foods> getBestFoods(){
        return foodsRepository.findByBestFoodTrue();
    }

    public List<Foods> searchFoods(String searchText){
        return foodsRepository.findByTitleContainingIgnoreCase(searchText);
    }

    public List<Foods> getFoodsByCategory(long categoryId){
        return foodsRepository.findByCategoryId(categoryId);
    }
}
