import 'package:bus_reservation_system/providers/app_data_provider.dart';
import 'package:bus_reservation_system/utils/constants.dart';
import 'package:bus_reservation_system/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? fromCity, toCity;
  DateTime? departureDate;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green[700],
                ),
                child: Center(
                  child: Text(
                    'Bus Reservation System',
                    style: GoogleFonts.chelseaMarket(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.bus_alert),
                title: const Text('ADD BUS'),
                onTap: () {
                  Navigator.pushNamed(context, routeNameAddBusPage);
                },
              ),
              ListTile(
                leading: const Icon(Icons.route),
                title: const Text('ADD ROUTE'),
                onTap: () {
                  Navigator.pushNamed(context, routeNameAddRoutePage);
                },
              ),
              ListTile(
                leading: const Icon(Icons.schedule),
                title: const Text('ADD SCHEDULE'),
                onTap: () {
                  Navigator.pushNamed(context, routeNameAddSchedulePage);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book_online),
                title: const Text('VIEW RESERVATIONS'),
                onTap: () {
                  Navigator.pushNamed(context, routeNameReservationPage);
                },
              ),
              ListTile(
                leading: const Icon(Icons.admin_panel_settings),
                title: const Text('ADMIN LOGIN'),
                onTap: () {
                  Navigator.pushNamed(context, routeNameLoginPage);
                },
              ),
            ],
          )
        ),
        
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SEARCH BUSES',
          style: GoogleFonts.chelseaMarket(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green[700],
      ),
      body: Form(
        key: _formKey,
        child: Center(child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          children:[
            DropdownButtonFormField<String>(
              initialValue: fromCity,
              validator: (value){
                if(value == null || value.isEmpty) return emptyFieldErrMessage;
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Departure City',
                border: OutlineInputBorder(),
              ),
              hint: const Text('Select Departure City'),
              isExpanded: true,
              items: cities.map((city) => DropdownMenuItem<String>(
                value: city,
                child: Text(city),
              )).toList(),
              onChanged: (value) {
                fromCity = value;},
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              initialValue: toCity,
              validator: (value){
                if(value == null || value.isEmpty) return emptyFieldErrMessage;
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Destination City',
                border: OutlineInputBorder(),
              ),
              hint: const Text('Select Destination City'),
              isExpanded: true,
              items: cities.map((city) => DropdownMenuItem<String>(
                value: city,
                child: Text(city),
              )).toList(),
              onChanged: (value) {
                toCity = value;},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _selectDate,
                  child: const Text('Select Departure Date'),
                ),
                Text(': ${departureDate != null ? getFormattedDate(departureDate!) : 'No date selected'}'),
              ]
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: _search,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: const Text('Search Buses'),
              ),
            ),
          ]
        ),))
    );
  }

  void _selectDate() async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 7)),
    );
    if (selectedDate != null) {
      setState(() {
        departureDate = selectedDate;
      });
    }
  }

  void _search() {
      if(departureDate == null){
        showMessage(context, emptyDateErrMessage);
        return;
      }
    if(_formKey.currentState!.validate()){
      Provider.of<AppDataProvider>(context, listen:false).
      getRouteByCityFromAndCityTo(fromCity!, toCity!).
      then((route){
      if(route != null){
        Navigator.pushNamed(context,routeNameSearchResultPage, arguments:[route,getFormattedDate(departureDate!)]);
      }
      else{
        showMessage(context, 'Could not find any route from $fromCity to $toCity');
      }
    });
    }
  }
}