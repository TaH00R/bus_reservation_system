package com.example.reservationsystem.services;

import com.example.reservationsystem.entities.Bus;

import java.util.List;

public interface BusService {
    Bus addBus(Bus bus);
    List<Bus> getAllBus();
}
