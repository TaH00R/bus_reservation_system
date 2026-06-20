import 'package:bus_reservation_system/datasource/app_data_source.dart';
import 'package:bus_reservation_system/datasource/data_source.dart';
import 'package:bus_reservation_system/models/app_user.dart';
import 'package:bus_reservation_system/models/auth_response_model.dart';
import 'package:bus_reservation_system/models/bus_model.dart';
import 'package:bus_reservation_system/models/bus_reservation.dart';
import 'package:bus_reservation_system/models/bus_route.dart';
import 'package:bus_reservation_system/models/bus_schedule.dart';
import 'package:bus_reservation_system/models/reservation_expansion_item.dart';
import 'package:bus_reservation_system/models/response_model.dart';
import 'package:bus_reservation_system/utils/helper_functions.dart';
import 'package:flutter/material.dart';

class AppDataProvider extends ChangeNotifier{
  final DataSource _dataSource = AppDataSource();
  List<Bus> _busList = [];
  List<BusRoute> _routeList = [];
  List<BusReservation> _reservationList = [];
  List<BusSchedule> _scheduleList = [];

  List<BusSchedule> get scheduleList => _scheduleList;
  List<Bus> get busList => _busList;
  List<BusRoute> get routeList => _routeList;
  List<BusReservation> get reservationList => _reservationList;

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

  List<ReservationExpansionItem> getReservationItem(){
    return List.generate(_reservationList.length, (index){
      final reservation = _reservationList[index];
      return ReservationExpansionItem(
        header: ReservationExpansionHeader(
          reservationId: reservation.reservationId,
          departureDate: reservation.departureDate,
          schedule: reservation.busSchedule,
          timestamp: reservation.timestamp,
          reservationStatus: reservation.reservationStatus
        ),
        body: ReservationExpansionBody(
          customer: reservation.customer,
          totalSeatBooked: reservation.totalSeatBooked,
          seatNumbers: reservation.seatNumbers,
          totalPrice: reservation.totalPrice
        ),
      );
    });
  }

  Future<void> getAllReservation() async {
    _reservationList = await _dataSource.getAllReservation();
    notifyListeners();
  }

  Future<ResponseModel> addBus(Bus bus) {
    return _dataSource.addBus(bus);
  }

  Future<ResponseModel> addRoute(BusRoute busRoute) {
    return _dataSource.addRoute(busRoute);
  }

  Future<ResponseModel> addSchedule(BusSchedule busSchedule) {
    return _dataSource.addSchedule(busSchedule);
  }

  Future<void> getAllBus() async{
    _busList = await _dataSource.getAllBus();
    
    notifyListeners();
  }

  Future<void> getAllRoutes() async{
    _routeList = await _dataSource.getAllRoutes();
    notifyListeners();
  }

  Future<void> getAllSchedules() async{
    _scheduleList = await _dataSource.getAllSchedules();
    notifyListeners();
  }

  Future<AuthResponseModel?> login(AppUser user) async{
    final response = await  _dataSource.login(user);
    if(response == null) return null;
    await saveToken(response.accessToken);
    await saveLoginTime(response.logInTime);
    await saveExpirationDuration(response.expirationDuration);
    return response;
  }

}