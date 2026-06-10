import 'package:bus_reservation_system/customwidgets/seat_plan_view.dart';
import 'package:bus_reservation_system/models/bus_schedule.dart';
import 'package:bus_reservation_system/providers/app_data_provider.dart';
import 'package:bus_reservation_system/utils/colors.dart';
import 'package:bus_reservation_system/utils/constants.dart';
import 'package:bus_reservation_system/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeatPagePlan extends StatefulWidget {
  const SeatPagePlan({super.key});

  @override
  State<SeatPagePlan> createState() => _SeatPagePlanState();
}

class _SeatPagePlanState extends State<SeatPagePlan> {
  late BusSchedule schedule;
  late String departureDate;

  int totalBookedSeats = 0;
  String bookedSeatNumbers = '';

  List<String> selectedSeats = [];

  bool isDataLoading = true;
  bool _initialized = false;

  ValueNotifier<String> selectedSeatNotifier =
      ValueNotifier<String>('NONE');

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_initialized) {
      final argList = ModalRoute.of(context)!.settings.arguments as List;

      schedule = argList[0];
      departureDate = argList[1];

      _initialized = true;
      _getData();
    }
  }

  Future<void> _getData() async {
    final reservationList =
        await Provider.of<AppDataProvider>(
          context,
          listen: false,
        ).getReservationsByScheduleAndDepartureDate(
          schedule.scheduleId!,
          departureDate,
        );

    int bookedCount = 0;
    List<String> bookedSeats = [];

    for (final reservation in reservationList) {
      bookedCount += reservation.totalSeatBooked;
      bookedSeats.add(reservation.seatNumbers);
    }

    setState(() {
      totalBookedSeats = bookedCount;
      bookedSeatNumbers = bookedSeats.join(', ');
      isDataLoading = false;
    });
  }

  @override
  void dispose() {
    selectedSeatNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SEAT PLAN',
          style: GoogleFonts.josefinSans(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      color: seatBookedColor,
                    ),
                    const SizedBox(width: 6),
                    const Text('BOOKED'),
                  ],
                ),

                const SizedBox(width: 16),

                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      color: seatAvailableColor,
                    ),
                    const SizedBox(width: 6),
                    const Text('AVAILABLE'),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16),

            ValueListenableBuilder<String>(
              valueListenable: selectedSeatNotifier,
              builder: (context, value, child) {
                return Text(
                  'SELECTED : $value',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                );
              },
            ),

            const SizedBox(height: 10),

            if (isDataLoading)
              const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            else
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SeatPlanView(
                        selectedSeats: selectedSeats,
                        totalSeatBooked: totalBookedSeats,
                        bookedSeatNumbers: bookedSeatNumbers,
                        totalSeats: schedule.bus.totalSeat,
                        isBusinessClass:
                            schedule.bus.busType ==
                            busTypeACBusiness,
                        onSeatSelected: (
                          bool value,
                          String seat,
                        ) {
                          setState(() {
                            if (value) {
                              if (!selectedSeats.contains(seat)) {
                                selectedSeats.add(seat);
                              }
                            } else {
                              selectedSeats.remove(seat);
                            }

                            selectedSeatNotifier.value =
                                selectedSeats.isEmpty
                                    ? 'NONE'
                                    : selectedSeats.join(', ');
                          });
                        },
                      ),

                      const SizedBox(height: 20),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[700],
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 12,
                          ),
                        ),
                        onPressed: () {
                          if (selectedSeats.isEmpty) {
                            showMessage(
                              context,
                              'Please select at least one seat',
                            );
                            return;
                          }

                          Navigator.pushNamed(
                            context,
                            routeNameBookingConfirmationPage,
                            arguments: [
                              departureDate,
                              schedule,
                              selectedSeats.join(', '),
                              selectedSeats.length,
                            ],
                          );
                        },
                        child: const Text(
                          'Book Now',
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}