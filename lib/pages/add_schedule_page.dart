import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../datasource/temp_db.dart';
import '../models/bus_model.dart';
import '../models/bus_schedule.dart';
import '../models/bus_route.dart';
import '../providers/app_data_provider.dart';
import '../utils/constants.dart';

class AddSchedulePage extends StatefulWidget {
  const AddSchedulePage({super.key});

  @override
  State<AddSchedulePage> createState() => _AddSchedulePageState();
}

class _AddSchedulePageState extends State<AddSchedulePage> {
  final _formKey = GlobalKey<FormState>();
  String? busType;
  BusRoute? busRoute;
  Bus? bus;
  TimeOfDay? timeOfDay;
  final priceController = TextEditingController();
  final discountController = TextEditingController();
  final feeController = TextEditingController();

  @override
  void didChangeDependencies() {
    _getdata();
    super.didChangeDependencies();
    }

  void _getdata() async {
    Provider.of<AppDataProvider>(context, listen: false).getAllBus();
    Provider.of<AppDataProvider>(context, listen: false).getAllRoutes();
    Provider.of<AppDataProvider>(context, listen: false).getAllSchedules();
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Add Schedule',
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
                    Icons.schedule,
                    size: 60,
                    color: Colors.green,
                  ),

                  const SizedBox(height: 12),

                  Text(
                    'Schedule Information',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),

                  const SizedBox(height: 24),

                  Consumer<AppDataProvider>(
                    builder: (context, provider, child) =>
                        DropdownButtonFormField<Bus>(
                      initialValue: bus,
                      isExpanded: true,
                      borderRadius:
                          BorderRadius.circular(15),
                      decoration: InputDecoration(
                        labelText: 'Bus',
                        prefixIcon: const Icon(
                          Icons.directions_bus_outlined,
                        ),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                      ),
                      hint: const Text('Select Bus'),
                      items: provider.busList
                          .map(
                            (e) => DropdownMenuItem<Bus>(
                              value: e,
                              child: Text(
                                '${e.busName} (${e.busType})',
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          bus = value;
                        });
                      },
                    ),
                  ),

                  const SizedBox(height: 16),

                  Consumer<AppDataProvider>(
                    builder: (context, provider, child) =>
                        DropdownButtonFormField<BusRoute>(
                      initialValue: busRoute,
                      isExpanded: true,
                      borderRadius:
                          BorderRadius.circular(15),
                      decoration: InputDecoration(
                        labelText: 'Route',
                        prefixIcon: const Icon(
                          Icons.route_outlined,
                        ),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                      ),
                      hint: const Text('Select Route'),
                      items: provider.routeList
                          .map(
                            (e) =>
                                DropdownMenuItem<BusRoute>(
                              value: e,
                              child: Text(e.routeName),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          busRoute = value;
                        });
                      },
                    ),
                  ),

                  const SizedBox(height: 16),

                  TextFormField(
                    controller: priceController,
                    keyboardType:
                        TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Ticket Price',
                      prefixIcon: const Icon(
                        Icons.price_change_outlined,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty) {
                        return emptyFieldErrMessage;
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 24),

                  Container(
                    padding:
                        const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                      borderRadius:
                          BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.access_time,
                            color: Colors.green,
                          ),
                      
                          const SizedBox(width: 12),
                      
                          Expanded(
                            child: Text(
                              timeOfDay == null
                                  ? 'No departure time selected'
                                  : getFormattedTime(
                                      timeOfDay!,
                                    ),
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                      
                          ElevatedButton(
                            onPressed: _selectTime,
                            style:
                                ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.green,
                              foregroundColor:
                                  Colors.white,
                            ),
                            child: const Text(
                              'Select',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: addSchedule,
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'ADD SCHEDULE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                      style:
                          ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.green,
                        foregroundColor:
                            Colors.white,
                        shape:
                            RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                            15,
                          ),
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

  void addSchedule() {
    if (_formKey.currentState!.validate()) {
      final schedule = BusSchedule(
        scheduleId: TempDB.tableSchedule.length + 1,
        bus: bus!,
        busRoute: busRoute!,
        departureTime: getFormattedTime(timeOfDay!),
        ticketPrice: int.parse(priceController.text),
      );
      Provider.of<AppDataProvider>(context, listen: false)
          .addSchedule(schedule)
          .then((response) {
        if (response.responseStatus == ResponseStatus.SAVED) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Schedule added successfully'),
              backgroundColor: Colors.green,
            ),
          );
          resetFields();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Failed to add schedule'),
              backgroundColor: Colors.red,
            ),
          );
        }
      });
    }
  }

  void _selectTime() async {
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );
    if(time != null) {
      setState(() {
        timeOfDay = time;
      });
    }
  }

  void resetFields() {
    priceController.clear();
    discountController.clear();
    feeController.clear();
  }

  String getFormattedTime(TimeOfDay time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
