package com.foodappbackend.project.service;

import com.foodappbackend.project.model.Users;
import com.foodappbackend.project.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private final UserRepository userRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    public UserService(UserRepository userRepository, BCryptPasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public Users registerUser(Users user) {
        // Provjerite je li e-mail već registriran
        if (userRepository.findByEmail(user.getEmail()) != null) {
            throw new RuntimeException("Email already exists");
        }

        if (user.getUserType() == null || (!user.getUserType().equals("user") && !user.getUserType().equals("chef") && !user.getUserType().equals("delivery") )) {
            throw new RuntimeException("Invalid user type");
        }

        // Hashirajte lozinku prije spremanja u bazu podataka
        user.setPassword(passwordEncoder.encode(user.getPassword()));

        // Spremite korisnika u bazu podataka
        return userRepository.save(user);
    }

    public Users loginUser(String email, String password) {
        // Pronađi korisnika po e-mail adresi
        Users user = userRepository.findByEmail(email);
        if (user == null) {
            throw new RuntimeException("User not found");
        }

        // Provjeri je li unesena lozinka ispravna
        if (!passwordEncoder.matches(password, user.getPassword())) {
            throw new RuntimeException("Invalid password");
        }

        return user;
    }

    public Users getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public Users getUserById(long id){
        return userRepository.findById(id).orElse(null);
    }
}
