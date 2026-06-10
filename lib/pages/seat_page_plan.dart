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
  bool isFirst = true;
  bool isDataLoading = true;
  ValueNotifier<String> selectedSeatNotifier = ValueNotifier('NONE');

  @override
  void didChangeDependencies() {
    final argList = ModalRoute.of(context)!.settings.arguments as List;
    schedule = argList[0];
    departureDate = argList[1];
    _getData();
    super.didChangeDependencies();
  }

  _getData() async{
   final reservationList = await Provider.of<AppDataProvider>(context, listen: false)
    .getReservationsByScheduleAndDepartureDate(schedule.scheduleId!, departureDate);

    List<String> bookedSeats = [];
    for(final reservation in reservationList){
      totalBookedSeats += reservation.totalSeatBooked;
      bookedSeats.add(reservation.seatNumbers);
        }
        bookedSeatNumbers = bookedSeats.join(', ');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('SEAT PLAN', style: GoogleFonts.josefinSans()),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Container(
                  width: 20,
                  height: 20,
                  color: seatBookedColor
                ),
                const SizedBox(width: 6),
                Text('BOOKED')
              ],),
              const SizedBox(width: 16),
              Row(children: [
                Container(
                  width: 20,
                  height: 20,
                  color: seatAvailableColor
                ),
                const SizedBox(width: 6),
                Text('AVAILABLE')
              ],)
          ],),
          const SizedBox(height: 12),
          ValueListenableBuilder(
            valueListenable: selectedSeatNotifier, 
            builder: (context, value, _)=> Text(
              'SELECTED : $value',
              style: const TextStyle(
                fontSize: 16,
              )
            )),

            Expanded(
              child: SingleChildScrollView(
                child : Column(
                  children: [
                    SeatPlanView(
                      onSeatSelected: (value, seat){
                        if(value) {
                          selectedSeats.add(seat);
                        } else {
                          selectedSeats.remove(seat);
                        }
                        selectedSeatNotifier.value = selectedSeats.join(', ');
                      },
                      totalSeatBooked: totalBookedSeats,
                      bookedSeatNumbers : bookedSeatNumbers,
                      totalSeats: schedule.bus.totalSeat,
                      isBusinessClass: schedule.bus.busType == busTypeACBusiness
                    ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                foregroundColor: Colors.white,),
              onPressed: (){
                if(selectedSeats.isEmpty){
                  showMessage(context, 'Please select at least one seat');
                  return;
                }
                Navigator.pushNamed(context, routeNameBookingConfirmationPage, 
                arguments: [departureDate, schedule, selectedSeatNotifier.value, selectedSeats.length]);

              }, 
              child: const Text('Book Now')
            )
                  ],
                )
              ),
            ),

        ],)
      ),
    );
  }
}