package com.foodappbackend.project.DBdata;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.foodappbackend.project.model.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class MyDataModel {

    @JsonProperty("Category")
    private List<Category> Category;

    @JsonProperty("Foods")
    private List<Foods> Foods;

    @JsonProperty("Location")
    private List<Location> Location;

    @JsonProperty("Price")
    private List<Price> Price;

    @JsonProperty("Time")
    private List<Time> Time;

    @JsonProperty("users")
    private List<Users> users;
}
