import 'dart:io';

import 'package:bus_reservation_system/datasource/data_source.dart';
import 'package:bus_reservation_system/models/app_user.dart';
import 'package:bus_reservation_system/models/auth_response_model.dart';
import 'package:bus_reservation_system/models/bus_model.dart';
import 'package:bus_reservation_system/models/bus_reservation.dart';
import 'package:bus_reservation_system/models/bus_route.dart';
import 'package:bus_reservation_system/models/bus_schedule.dart';
import 'package:bus_reservation_system/models/error_details_model.dart';
import 'package:bus_reservation_system/models/response_model.dart';
import 'package:bus_reservation_system/utils/constants.dart';
import 'package:bus_reservation_system/utils/helper_functions.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AppDataSource extends DataSource{
final String baseUrl = 'http://192.168.31.138:8080/api/';

  Map<String, String> get header => {
    'Content-Type': 'application/json',
  };
  Future<Map<String, String>> get authHeader async => {
    'Content-Type': 'application/json',
    HttpHeaders.authorizationHeader: 'Bearer ${await getToken()}',
  };

  
  @override
  Future<ResponseModel> addReservation(BusReservation reservation) {
    // TODO: implement addReservation
    throw UnimplementedError();
  }

  @override
  Future<ResponseModel> addBus(Bus bus) async {
    final url = '$baseUrl${'bus/add'}';
    try{
      final response = await http.post(
  Uri.parse(url),
  headers: await authHeader,
  body: json.encode(bus.toJson()),
);
return await _getResponseModel(response);
    }
    catch(e){
      print("Add bus error: $e");
      rethrow;
    } 
  }


  @override
  Future<ResponseModel> addRoute(BusRoute busRoute) async {
    final url = '$baseUrl${'route/add'}';
    try{
      final response = await http.post(
  Uri.parse(url),
  headers: await authHeader,
  body: json.encode(busRoute.toJson()),
);
return await _getResponseModel(response);
    }
    catch(e){
      print("Add route error: $e");
      rethrow;
    } 
  }

  @override
  Future<ResponseModel> addSchedule(BusSchedule busSchedule) async {
    final url = '$baseUrl${'schedule/add'}';
    try{
      final response = await http.post(
  Uri.parse(url),
  headers: await authHeader,
  body: json.encode(busSchedule.toJson()),
);
return await _getResponseModel(response);
    }
    catch(e){
      print("Add schedule error: $e");
      rethrow;
    } 
  }

  @override
  Future<List<BusReservation>> getAllReservation() {
    // TODO: implement getAllReservation
    throw UnimplementedError();
  }


  @override
  Future<List<Bus>> getAllBus() async {
    final url = '$baseUrl${'bus/all'}';
    try{
      final response = await http.get(Uri.parse(url), headers: await authHeader);
      if(response.statusCode == 200){
        final mapList = json.decode(response.body) as List;
        return List.generate(mapList.length, (index)=> Bus.fromJson(mapList[index]));
      }
      return [];
    }
    catch(e){
      print("Get all bus error: $e");
      rethrow;
    }
  }


  @override
  Future<List<BusRoute>> getAllRoutes() async {
    final url = '$baseUrl${'route/all'}';
    try{
      final response = await http.get(Uri.parse(url), headers: await authHeader);
      if(response.statusCode == 200){
        final mapList = json.decode(response.body) as List;
        return List.generate(mapList.length, (index)=> BusRoute.fromJson(mapList[index]));
      }
      return [];
    }
    catch(e){
      print("Get all routes error: $e");
      rethrow;
    }
  }

  @override
  Future<List<BusSchedule>> getAllSchedules() async {
    final url = '$baseUrl${'schedule/all'}';
    try{
      final response = await http.get(Uri.parse(url), headers: await authHeader);
      if(response.statusCode == 200){
        final mapList = json.decode(response.body) as List;
        return List.generate(mapList.length, (index)=> BusSchedule.fromJson(mapList[index]));
      }
      return [];
    }
    catch(e){
      print("Get all schedules error: $e");
      rethrow;
    }
  }

  @override
  Future<List<BusReservation>> getReservationsByMobile(String mobile) {
    // TODO: implement getReservationsByMobile
    throw UnimplementedError();
  }

  @override
  Future<List<BusReservation>> getReservationsByScheduleAndDepartureDate(int scheduleId, String departureDate) {
    // TODO: implement getReservationsByScheduleAndDepartureDate
    throw UnimplementedError();
  }

  @override
  Future<BusRoute?> getRouteByCityFromAndCityTo(String cityFrom, String cityTo) {
    // TODO: implement getRouteByCityFromAndCityTo
    throw UnimplementedError();
  }

  @override
  Future<BusRoute?> getRouteByRouteName(String routeName) {
    // TODO: implement getRouteByRouteName
    throw UnimplementedError();
  }

  @override
  Future<List<BusSchedule>> getSchedulesByRouteName(String routeName) {
    // TODO: implement getSchedulesByRouteName
    throw UnimplementedError();
  }

  @override
  Future<AuthResponseModel?> login(AppUser user) async {
        final url = '$baseUrl${'auth/login'}';
        try{
          final response = await http.post(
          Uri.parse(url),
          headers : header,
          body: json.encode(user.toJson()),
          );
          final map = json.decode(response.body);
          final authResponseModel = AuthResponseModel.fromJson(map);
          return authResponseModel;
        }catch(e){
  print("Login error: $e");
  return null;
        }
  }
  
  Future<ResponseModel> _getResponseModel(http.Response response) async {
    ResponseStatus status = ResponseStatus.NONE;
    ResponseModel responseModel = ResponseModel();

    if(response.statusCode == 200){
      status = ResponseStatus.SAVED;
      responseModel = ResponseModel.fromJson(json.decode(response.body));
      responseModel = responseModel.copyWith(responseStatus: status);
    }
    else if (response.statusCode == 401 || response.statusCode == 403) {
      if(await hasTokenExpired()) {
        status = ResponseStatus.EXPIRED;
      } else {
        status = ResponseStatus.UNAUTHORIZED;
      }
      responseModel = ResponseModel(
        responseStatus: status,
        statusCode: response.statusCode,
        message: 'Unauthorized access',
        object: {},
      );
    }
    else if(response.statusCode == 500 || response.statusCode == 400){
      final json = jsonDecode(response.body);
      final errorDetails = ErrorDetailsModel.fromJson(json);
      status = ResponseStatus.FAILED;
      responseModel = ResponseModel(
        responseStatus: status,
        statusCode: response.statusCode,
        message: errorDetails.errorMessage,
        object: {},
      );
    }
    return responseModel;
  }

}