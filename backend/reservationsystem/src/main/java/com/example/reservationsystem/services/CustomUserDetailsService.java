package com.example.reservationsystem.services;

import com.example.reservationsystem.entities.AppUsers;
import com.example.reservationsystem.repos.AppUserRepository;
import org.jspecify.annotations.NonNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private AppUserRepository appUserRepository;

    @Override
    @NonNull
    public UserDetails loadUserByUsername(@NonNull String username) throws UsernameNotFoundException {
        final AppUsers appUser = appUserRepository.findByUserName(username).
                orElseThrow(()->new UsernameNotFoundException("User does not exist"));
        return User.builder()
                .username(appUser.getUserName())
                .password(appUser.getPassword())
                .roles(appUser.getRole())
                .build();
    }
}
