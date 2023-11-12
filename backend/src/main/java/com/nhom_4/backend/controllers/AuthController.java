package com.nhom_4.backend.controllers;

import com.nhom_4.backend.dtos.CredentialsDto;
import com.nhom_4.backend.dtos.SignUpDto;
import com.nhom_4.backend.config.UserAuthenticationProvider;
import com.nhom_4.backend.dtos.UserDto;
import com.nhom_4.backend.entites.User;
import com.nhom_4.backend.repositories.UserRepository;
import com.nhom_4.backend.services.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.util.List;

@RequiredArgsConstructor
@RestController
public class AuthController {

    private final UserService userService;
    private final UserAuthenticationProvider userAuthenticationProvider;
    private final UserRepository userRepository;

    @PostMapping("/login")
    public ResponseEntity<UserDto> login(@RequestBody @Valid CredentialsDto credentialsDto) {
        UserDto userDto = userService.login(credentialsDto);
        userDto.setToken(userAuthenticationProvider.createToken(userDto));
        return ResponseEntity.ok(userDto);
    }

    @PostMapping("/register")
    public ResponseEntity<UserDto> register(@RequestBody @Valid SignUpDto user) {
        UserDto createdUser = userService.register(user);
        createdUser.setToken(userAuthenticationProvider.createToken(createdUser));
        return ResponseEntity.created(URI.create("/users/" + createdUser.getId())).body(createdUser);
    }

    @PutMapping("/setRole/{id}")
    public User setRole(@RequestBody User userInput,  @PathVariable Long id){
        User user = userRepository.findById(id).get();
        user.setRole(userInput.getRole());
        return user;
    }

    @GetMapping("/api/users")
    public List<User> all () {
        return userRepository.findAll();
    }

    @GetMapping("/api/users/{id}")
    public User one (@PathVariable Long id){
        return userRepository.findById(id).get();
    }

    @PutMapping("/api/users/{id}")
    public User edit (@RequestBody User user, @PathVariable Long id) {
        userService.updateUserInfo(id, user);
        return user;
    }

    @GetMapping("/api/users/{id}/is-admin")
    public Boolean isAdmin (@PathVariable Long id){
        return userService.isAdmin(id);
    }
}
