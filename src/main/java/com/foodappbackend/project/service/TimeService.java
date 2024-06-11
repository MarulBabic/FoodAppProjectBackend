package com.foodappbackend.project.service;

import com.foodappbackend.project.model.Location;
import com.foodappbackend.project.model.Time;
import com.foodappbackend.project.repository.LocationRepository;
import com.foodappbackend.project.repository.TimeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TimeService {

    private final TimeRepository timeRepository;

    @Autowired
    public TimeService(TimeRepository timeRepository) {
        this.timeRepository = timeRepository;
    }

    public List<Time> getAllTime(){
        return timeRepository.findAll();
    }

    public Time getTimeById(Long id){
        return timeRepository.findById(id).orElse(null);
    }

    public Time addTime(Time time){
       return timeRepository.save(time);
    }

    public void deleteTime(Long id){
        timeRepository.deleteById(id);
    }
}
