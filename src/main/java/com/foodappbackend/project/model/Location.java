package com.foodappbackend.project.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Location {

    @Id
   // @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty("Id")
    private Long Id;

    @JsonProperty("loc")
    private String loc;

}
