package com.foodappbackend.project.repository;

import com.foodappbackend.project.model.Users;
import org.apache.catalina.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<Users,Long> {
    Users findByEmail(String email);
}
