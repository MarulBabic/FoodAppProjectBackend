package com.foodappbackend.project.controller;

import com.foodappbackend.project.model.Location;
import com.foodappbackend.project.model.Time;
import com.foodappbackend.project.service.LocationService;
import com.foodappbackend.project.service.TimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/time")
public class TimeController {

    @Autowired
    private TimeService timeService;

    @GetMapping
    public List<Time> getAllTime(){
        return timeService.getAllTime();
    }

    @GetMapping("/{id}")
    public Time getTimeById(@PathVariable Long id){
        return timeService.getTimeById(id);
    }

    @PostMapping
    public ResponseEntity<Time> addTime(@RequestBody Time time){
        Time savedTime = timeService.addTime(time);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedTime);
    }

    @DeleteMapping("/{id}")
    public void deleteTime(@PathVariable Long id){
        timeService.deleteTime(id);
    }
}
