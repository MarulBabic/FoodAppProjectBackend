package com.foodappbackend.project.DBdata;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.foodappbackend.project.model.*;
import com.foodappbackend.project.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.io.InputStream;

@Component
public class DataLoader implements CommandLineRunner {
    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private FoodsRepository foodsRepository;

    @Autowired
    private TimeRepository timeRepository;

    @Autowired
    private PriceRepository priceRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private LocationRepository locationRepository;


    @Override
    public void run(String... args) throws Exception {
        ObjectMapper objectMapper = new ObjectMapper();
        ClassLoader classLoader = getClass().getClassLoader();
        InputStream inputStream = classLoader.getResourceAsStream("data.json");
        MyDataModel dataModel = objectMapper.readValue(inputStream, MyDataModel.class);



        // Spremi kategorije
        for (Category category : dataModel.getCategory()) {
            if(!categoryRepository.existsById(category.getId())) {
                categoryRepository.save(category);
            }
        }


        // Spremi vremena
        for (Time time : dataModel.getTime()) {
            if(!timeRepository.existsById(time.getId())) {
                timeRepository.save(time);
            }
        }

        // Spremi cijene
        for (Price price : dataModel.getPrice()) {
            priceRepository.save(price);
        }

        // Spremi korisnike
//        for (Users user : dataModel.getUsers()) {
//            if(!userRepository.existsById(user.getUid())) {
//                userRepository.save(user);
//            }
//        }

        // Spremi lokacije
        for (Location location : dataModel.getLocation()) {
            if(!locationRepository.existsById(location.getId())) {
                locationRepository.save(location);
            }
        }

        for (Foods foods : dataModel.getFoods()) {
            if(!foodsRepository.existsById(foods.getId())) {
                Category category = categoryRepository.findById(foods.getCategoryId())
                        .orElseThrow(() -> new RuntimeException("Category not found: " + foods.getCategoryId()));
                Location location = locationRepository.findById(foods.getLocationId())
                        .orElseThrow(() -> new RuntimeException("Location not found: " + foods.getLocationId()));
                Price price = priceRepository.findById(foods.getPriceId())
                        .orElseThrow(() -> new RuntimeException("Price not found: " + foods.getPriceId()));
                Time time = timeRepository.findById(foods.getTimeId())
                        .orElseThrow(() -> new RuntimeException("Time not found: " + foods.getTimeId()));

                foods.setCategoryId(category.getId());
                foods.setLocationId(location.getId());
                foods.setPriceId(price.getId());
                foods.setTimeId(time.getId());

                foodsRepository.save(foods);
            }
        }

        System.out.println("Podaci uspješno učitani i spremljeni.");
    }
}

