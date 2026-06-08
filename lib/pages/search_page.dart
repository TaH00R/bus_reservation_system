import 'package:bus_reservation_system/utils/constants.dart';
import 'package:bus_reservation_system/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? fromCity, toCity;
  DateTime? departureDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'SEARCH BUSES',
            style: GoogleFonts.chelseaMarket(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.green[700],
      ),
      body: Form(
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
            )
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
}