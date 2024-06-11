package com.foodappbackend.project.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Foods {

    @Id
   // @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty("Id")
    private Long Id;


    @JsonProperty("BestFood")
    private boolean bestFood;

    @JsonProperty("Description")
    @Column(length = 1000)
    private String Description;

    @JsonProperty("ImagePath")
    private String ImagePath;

    @JsonProperty("Price")
    private double Price;

    @JsonProperty("Star")
    private double Star;

    @JsonProperty("Title")
    private String title;

    @JsonProperty("TimeValue")
    private int TimeValue;


    @JsonProperty("CategoryId")
    private Long categoryId;


    @JsonProperty("LocationId")
    private Long locationId;


    @JsonProperty("PriceId")
    private Long priceId;


    @JsonProperty("TimeId")
    private Long timeId;

}
