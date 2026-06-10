import 'package:bus_reservation_system/pages/add_bus_page.dart';
import 'package:bus_reservation_system/pages/add_route_page.dart';
import 'package:bus_reservation_system/pages/add_schedule_page.dart';
import 'package:bus_reservation_system/pages/booking_confirmation_page.dart';
import 'package:bus_reservation_system/pages/login_page.dart';
import 'package:bus_reservation_system/pages/search_result_page.dart';
import 'package:bus_reservation_system/pages/seat_page_plan.dart';
import 'package:bus_reservation_system/providers/app_data_provider.dart';
import 'package:bus_reservation_system/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:bus_reservation_system/pages/search_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create:(_)=>AppDataProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: SearchPage(),
      routes:{
        routeNameHome : (context)=> const SearchPage(), 
        routeNameSearchResultPage : (context)=> const SearchResultPage(),
        routeNameSeatPlanPage : (context) => const SeatPagePlan(),
        routeNameBookingConfirmationPage : (context) => const BookingConfirmationPage(),
        routeNameAddBusPage : (context) => const AddBusPage(),
        routeNameAddRoutePage : (context) => const AddRoutePage(),
        routeNameAddSchedulePage : (context) => const AddSchedulePage(),
        routeNameLoginPage : (context) => const LoginPage(),

      }
    );
  }
}


