package com.example.reservationsystem.services;

import com.example.reservationsystem.entities.BusRoute;
import com.example.reservationsystem.entities.BusSchedule;

import java.util.List;

public interface BusScheduleService {
    BusSchedule addSchedule (BusSchedule busSchedule);
    List<BusSchedule> getAllBusSchedules();
    List<BusSchedule> getSchedulesByRoute(String routeName);
}
