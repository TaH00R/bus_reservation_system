import 'package:bus_reservation_system/datasource/data_source.dart';
import 'package:bus_reservation_system/datasource/dummy_data_source.dart';
import 'package:bus_reservation_system/models/bus_reservation.dart';
import 'package:bus_reservation_system/models/bus_route.dart';
import 'package:bus_reservation_system/models/bus_schedule.dart';
import 'package:bus_reservation_system/models/response_model.dart';
import 'package:flutter/material.dart';

class AppDataProvider extends ChangeNotifier{
  final DataSource _dataSource = DummyDataSource();

  List<BusSchedule> _scheduleList = [];
  List<BusSchedule> get scheduleList => _scheduleList;

  Future<List<BusSchedule>> getSchedulesByRouteName(String routeName) async {
    _scheduleList = await _dataSource.getSchedulesByRouteName(routeName);
    return _scheduleList;
  }

  Future<BusRoute?> getRouteByCityFromAndCityTo(String cityFrom, String cityTo) {
    return _dataSource.getRouteByCityFromAndCityTo(cityFrom, cityTo);
  }

  Future<List<BusReservation>> getReservationsByScheduleAndDepartureDate(int scheduleId, String departureDate){
    return _dataSource.getReservationsByScheduleAndDepartureDate(scheduleId, departureDate);
  }

  Future<ResponseModel> addReservation(BusReservation reservation){
    return _dataSource.addReservation(reservation);}
}