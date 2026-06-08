import 'package:bus_reservation_system/utils/colors.dart';
import 'package:bus_reservation_system/utils/constants.dart';
import 'package:flutter/material.dart';

class SeatPlanView extends StatelessWidget {
  final int totalSeats;
  final String bookedSeatNumbers;
  final int totalSeatBooked;
  final bool isBusinessClass;
  final Function(bool, String) onSeatSelected;
  const SeatPlanView({super.key, required this.totalSeats, required this.bookedSeatNumbers, required this.totalSeatBooked, required this.isBusinessClass, required this.onSeatSelected });

  @override
  Widget build(BuildContext context) {
    final noOfRows = (isBusinessClass ? totalSeats/3 : totalSeats/4).toInt();
    final noOfColumns = isBusinessClass ? 3 : 4;
    List<List<String>> seatArrangement = [];

    for(int i = 0; i < noOfRows; i++){
      List<String> columns = [];
      for(int j = 0; j < noOfColumns; j++){
        columns.add('${seatLabelList[i]}${j+1}');
      }
      seatArrangement.add(columns);
    }
    final List<String> bookedSeatsList = bookedSeatNumbers.isEmpty ? [] : bookedSeatNumbers.split(',');
    return Container(
      margin : const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 0.80,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2),
      ),
      child: Column(
        children:[
          const Text('FRONT', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
          const Divider(height: 2, color: Colors.black),
          Column(
            children: [
              for(int i = 0; i<seatArrangement.length; i++)
              Row(
                mainAxisSize: MainAxisSize.min,
                children:[
                  for(int j=0; j<seatArrangement[i].length; j++) ...[
                    Seat(
                      label: seatArrangement[i][j],
                      isBooked: bookedSeatsList.contains(seatArrangement[i][j]),
                      onSelect: (bool isSelected) {
                        onSeatSelected(isSelected, seatArrangement[i][j]);
                      },
                    ),
                    if(isBusinessClass && j==0) const SizedBox(width: 24),
                    if(!isBusinessClass && j==1) const SizedBox(width: 24)
                  ]
                ]
              )
            ]
          ),
        ]
      )
    );
  }
}





class Seat extends StatefulWidget {
  final String label;
  final bool isBooked;
  final Function(bool) onSelect;
  const Seat({super.key, required this.label, required this.isBooked, required this.onSelect});

  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){widget.onSelect(!selected);},
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.isBooked ? seatBookedColor : (selected ? seatSelectedColor : seatAvailableColor),
          borderRadius: BorderRadius.circular(8),
          boxShadow: widget.isBooked ? [] : [
            BoxShadow(
              color: Colors.white,
              blurRadius: 5,
              offset: const Offset(-4,-4),
              spreadRadius: 2
            ),
            BoxShadow(
              color: Colors.grey.shade400,
              offset: const Offset(4,4), 
            )
          ]
        ),
        child: Text(widget.label, style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold, 
        color: selected ? Colors.white : Colors.black),),
      ),
    );
  }
}