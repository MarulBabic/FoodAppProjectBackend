package com.foodappbackend.project.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Price {


    @Id
  // @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty("Id")
    private Long Id;

    @JsonProperty("Value")
    private String Value;
}
