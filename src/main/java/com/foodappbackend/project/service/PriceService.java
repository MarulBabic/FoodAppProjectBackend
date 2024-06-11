package com.foodappbackend.project.service;

import com.foodappbackend.project.model.Location;
import com.foodappbackend.project.model.Price;
import com.foodappbackend.project.repository.LocationRepository;
import com.foodappbackend.project.repository.PriceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PriceService {

    private final PriceRepository priceRepository;

    @Autowired
    public PriceService(PriceRepository priceRepository) {
        this.priceRepository = priceRepository;
    }

    public List<Price> getAllPrices(){
        return priceRepository.findAll();
    }

    public Price getPriceById(Long id){
        return priceRepository.findById(id).orElse(null);
    }

    public Price addPrice(Price price){
       return priceRepository.save(price);
    }

    public void deletePrice(Long id){
        priceRepository.deleteById(id);
    }
}
