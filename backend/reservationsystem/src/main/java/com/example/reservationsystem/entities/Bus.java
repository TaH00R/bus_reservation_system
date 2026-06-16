package com.example.reservationsystem.entities;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "bus") //Create Table in Database

public class Bus {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long busId;

    private String busName;
    private String busType;
    private Integer totalSeat;

    @Column(unique = true)
    private String busNumber;
}


