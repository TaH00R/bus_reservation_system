import 'package:bus_reservation_system/datasource/data_source.dart';
import 'package:bus_reservation_system/datasource/temp_db.dart';
import 'package:bus_reservation_system/models/app_user.dart';
import 'package:bus_reservation_system/models/auth_response_model.dart';
import 'package:bus_reservation_system/models/bus_model.dart';
import 'package:bus_reservation_system/models/bus_reservation.dart';
import 'package:bus_reservation_system/models/bus_schedule.dart';
import 'package:bus_reservation_system/models/bus_route.dart';
import 'package:bus_reservation_system/models/response_model.dart';
import 'package:bus_reservation_system/utils/constants.dart';

class DummyDataSource extends DataSource{
  @override
  Future<ResponseModel> addBus(Bus bus) async {
    TempDB.tableBus.add(bus);
    return ResponseModel(responseStatus: ResponseStatus.SAVED, statusCode: 200, message: 'Bus added successfully', object: {});
  }

  @override
  Future<ResponseModel> addReservation(BusReservation reservation) async {
    TempDB.tableReservation.add(reservation);
    return ResponseModel(responseStatus: ResponseStatus.SAVED, statusCode: 200, message: 'Reservation added successfully', object: {});
  }

  @override
  Future<ResponseModel> addRoute(BusRoute busRoute) async {
    TempDB.tableRoute.add(busRoute);
    return ResponseModel(responseStatus: ResponseStatus.SAVED, statusCode: 200, message: 'Route added successfully', object: {});
  }

  @override
  Future<ResponseModel> addSchedule(BusSchedule busSchedule) async {
    TempDB.tableSchedule.add(busSchedule);
    return ResponseModel(responseStatus: ResponseStatus.SAVED, statusCode: 200, message: 'Schedule added successfully', object: {});
  }
  @override
  Future<List<Bus>> getAllBus() async {
    return TempDB.tableBus;
    }

  @override
  Future<List<BusReservation>> getAllReservation() async {
    return TempDB.tableReservation;
  }

  @override
  Future<List<BusRoute>> getAllRoutes() async {
    return TempDB.tableRoute;
  }

  @override
  Future<List<BusSchedule>> getAllSchedules() async {
    return TempDB.tableSchedule;
  }

  @override
  Future<List<BusReservation>> getReservationsByMobile(String mobile) {
    // TODO: implement getReservationsByMobile
    throw UnimplementedError();
  }

  @override
  Future<List<BusReservation>> getReservationsByScheduleAndDepartureDate(int scheduleId, String departureDate) async {
    return TempDB.tableReservation.
    where((reservation)=> reservation.busSchedule.scheduleId == scheduleId 
    && reservation.departureDate == departureDate).toList();
    }

  @override
  Future<BusRoute?> getRouteByCityFromAndCityTo(String cityFrom, String cityTo) async {
    BusRoute? route;
    try{
    route = TempDB.tableRoute.firstWhere((element)=>
      element.cityFrom == cityFrom && element.cityTo == cityTo);
      return route;
      }
      catch(e){
        return null;
            }
  }

  @override
  Future<BusRoute?> getRouteByRouteName(String routeName) {
    // TODO: implement getRouteByRouteName
    throw UnimplementedError();
  }

  @override
  Future<List<BusSchedule>> getSchedulesByRouteName(String routeName) async {
    return TempDB.tableSchedule.where((schedule)=>schedule.busRoute.routeName == routeName).toList();
    
  }

  @override
  Future<AuthResponseModel?> login(AppUser user) {
    // TODO: implement login
    throw UnimplementedError();
  }
  

}