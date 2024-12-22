package com.foodappbackend.project.service;

import com.foodappbackend.project.model.Location;
import com.foodappbackend.project.repository.LocationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@Service
public class LocationService {

    private final LocationRepository locationRepository;

   // @Autowired
    public LocationService(LocationRepository locationRepository) {
        this.locationRepository = locationRepository;
    }

    public List<Location> getAllLocations(){
        return locationRepository.findAll();
    }

    public Location getLocationById(Long id){
        return locationRepository.findById(id).orElse(null);
    }

    public Location addLocation(Location location){
       return locationRepository.save(location);
    }

    public void deleteLocation(Long id){
        locationRepository.deleteById(id);
    }
}
