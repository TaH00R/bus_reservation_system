import 'package:bus_reservation_system/datasource/temp_db.dart';
import 'package:flutter/material.dart';

import '../models/bus_model.dart';
import '../utils/constants.dart';

class AddBusPage extends StatefulWidget {
  const AddBusPage({Key? key}) : super(key: key);

  @override
  State<AddBusPage> createState() => _AddBusPageState();
}

class _AddBusPageState extends State<AddBusPage> {
  final _formKey = GlobalKey<FormState>();
  String? busType;
  final seatController = TextEditingController();
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  @override
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(
        'Add Bus',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
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
                    Icons.directions_bus_rounded,
                    size: 60,
                  ),

                  const SizedBox(height: 12),

                  Text(
                    'Bus Information',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),

                  const SizedBox(height: 24),

                  DropdownButtonFormField<String>(
                    value: busType,
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(15),
                    decoration: InputDecoration(
                      labelText: 'Bus Type',
                      prefixIcon:
                          const Icon(Icons.category_outlined),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                    hint: const Text('Select Bus Type'),
                    items: busTypes
                        .map(
                          (e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        busType = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select a Bus Type';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 16),

                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Bus Name',
                      prefixIcon:
                          const Icon(Icons.drive_file_rename_outline),
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

                  const SizedBox(height: 16),

                  TextFormField(
                    controller: numberController,
                    decoration: InputDecoration(
                      labelText: 'Bus Number',
                      prefixIcon:
                          const Icon(Icons.confirmation_number_outlined),
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

                  const SizedBox(height: 16),

                  TextFormField(
                    controller: seatController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Total Seats',
                      prefixIcon:
                          const Icon(Icons.event_seat_outlined),
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
                      onPressed: addBus,
                      icon: const Icon(Icons.add),
                      label: const Text(
                        'ADD BUS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                        backgroundColor: Colors.green[700],
                        foregroundColor: Colors.white,
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

  void addBus() {
    if (_formKey.currentState!.validate()) {
      final bus = Bus(
        busId: TempDB.tableBus.length + 1, // remove this line if you save into MySql DB
        busName: nameController.text,
        busNumber: numberController.text,
        busType: busType!,
        totalSeat: int.parse(seatController.text),
      );

      TempDB.tableBus.add(bus);
      resetFields();
    }
  }

  void resetFields() {
    numberController.clear();
    seatController.clear();
    nameController.clear();
  }

  @override
  void dispose() {
    seatController.dispose();
    nameController.dispose();
    numberController.dispose();
    super.dispose();
  }
}
