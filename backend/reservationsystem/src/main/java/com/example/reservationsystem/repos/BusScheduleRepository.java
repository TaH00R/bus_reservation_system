package com.example.reservationsystem.repos;

import com.example.reservationsystem.entities.Bus;
import com.example.reservationsystem.entities.BusRoute;
import com.example.reservationsystem.entities.BusSchedule;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface BusScheduleRepository extends JpaRepository<BusSchedule,Long> {
    Optional<List<BusSchedule>> findByBusRoute(BusRoute busRoute);
    Boolean existsByBusAndBusRouteAndDepartureTime(Bus bus, BusRoute busRoute, String date);

}
