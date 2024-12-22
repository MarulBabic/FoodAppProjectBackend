package com.foodappbackend.project.controller;

import com.foodappbackend.project.model.Location;
import com.foodappbackend.project.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/location")
public class LocationController {


    @Autowired
    private LocationService locationService;

    @GetMapping
    public List<Location> getAllLocations(){
        return locationService.getAllLocations();
    }

    @GetMapping("/{id}")
    public Location getLocationById(@PathVariable Long id){
        return locationService.getLocationById(id);
    }

    @PostMapping
    public ResponseEntity<Location> addLocation(@RequestBody Location location){
        Location savedLocation = locationService.addLocation(location);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedLocation);
    }

    @DeleteMapping("/{id}")
    public void deleteLocation(@PathVariable Long id){
        locationService.deleteLocation(id);
    }

}
