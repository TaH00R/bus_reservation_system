import 'package:bus_reservation_system/customwidgets/login_alert_dialog.dart';
import 'package:bus_reservation_system/datasource/temp_db.dart';
import 'package:bus_reservation_system/models/bus_route.dart';
import 'package:bus_reservation_system/providers/app_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/constants.dart';

class AddRoutePage extends StatefulWidget {
  const AddRoutePage({super.key});

  @override
  State<AddRoutePage> createState() => _AddRoutePageState();
}

class _AddRoutePageState extends State<AddRoutePage> {
  final _formKey = GlobalKey<FormState>();
  String? from, to;
  final distanceController = TextEditingController();
  @override
 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Add Route',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    body: Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Icon(
                    Icons.route,
                    size: 60,
                    color: Colors.green,
                  ),

                  const SizedBox(height: 12),

                  Text(
                    'Route Information',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),

                  const SizedBox(height: 24),

                  DropdownButtonFormField<String>(
                    initialValue: from,
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(15),
                    decoration: InputDecoration(
                      labelText: 'From',
                      prefixIcon: const Icon(
                        Icons.location_on_outlined,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                    hint: const Text('Select Departure City'),
                    items: cities
                        .map(
                          (e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        from = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select a departure city';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 16),

                  DropdownButtonFormField<String>(
                    initialValue: to,
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(15),
                    decoration: InputDecoration(
                      labelText: 'To',
                      prefixIcon: const Icon(
                        Icons.flag_outlined,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                    hint: const Text('Select Destination City'),
                    items: cities
                        .map(
                          (e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        to = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select a destination city';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 16),

                  TextFormField(
                    controller: distanceController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Distance (KM)',
                      prefixIcon: const Icon(
                        Icons.social_distance_outlined,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return emptyFieldErrMessage;
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: addRoute,
                      icon: const Icon(
                        Icons.add_road,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'ADD ROUTE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

  void addRoute() {
    if (_formKey.currentState!.validate()) {
      final route = BusRoute(
        // routeId: TempDB.tableRoute.length + 1, // remove this line if you save into MySql DB
        routeName: '$from-$to',
        cityFrom: from!,
        cityTo: to!,
        distanceInKm: double.parse(distanceController.text),
      );
      Provider.of<AppDataProvider>(context, listen: false).addRoute(route).
      then((response){
        if(response.responseStatus == ResponseStatus.SAVED){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(response.message))
          );
          resetFields();
        }else if (response.responseStatus == ResponseStatus.UNAUTHORIZED || response.responseStatus == ResponseStatus.EXPIRED) {
           ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(content: Text('Session expired. Please log in again.'))
           );
           ShowLoginAlertDialog();
         } 
         else {
           ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(content: Text(response.message))
           );
         } 
      });
    }
  }
  @override
  void dispose() {
    distanceController.dispose();
    super.dispose();
  }

  void resetFields() {
    distanceController.clear();
  }
}
