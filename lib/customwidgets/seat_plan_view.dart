import 'package:flutter/material.dart';
import 'package:bus_reservation_system/utils/colors.dart';
import 'package:bus_reservation_system/utils/constants.dart';

class SeatPlanView extends StatelessWidget {
  final int totalSeats;
  final String bookedSeatNumbers;
  final int totalSeatBooked;
  final bool isBusinessClass;
  final List<String> selectedSeats;
  final Function(bool, String) onSeatSelected;

  const SeatPlanView({
    super.key,
    required this.totalSeats,
    required this.bookedSeatNumbers,
    required this.totalSeatBooked,
    required this.isBusinessClass,
    required this.selectedSeats,
    required this.onSeatSelected,
  });

  Widget _legend(
    Color color,
    Color borderColor,
    String title,
  ) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: borderColor),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final noOfRows =
        (isBusinessClass ? totalSeats / 3 : totalSeats / 4).toInt();

    final noOfColumns = isBusinessClass ? 3 : 4;

    List<List<String>> seatArrangement = [];

    for (int i = 0; i < noOfRows; i++) {
      List<String> columns = [];

      for (int j = 0; j < noOfColumns; j++) {
        columns.add('${seatLabelList[i]}${j + 1}');
      }

      seatArrangement.add(columns);
    }

    final List<String> bookedSeatsList =
        bookedSeatNumbers.isEmpty
            ? []
            : bookedSeatNumbers
                .split(',')
                .map((e) => e.trim())
                .toList();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.grey.shade200,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.drive_eta_rounded, color: Colors.green),
                SizedBox(width: 8),
                Text(
                  'Driver',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _legend(
                Colors.white,
                Colors.grey.shade400,
                'Available',
              ),
              _legend(
                seatSelectedColor,
                seatSelectedColor,
                'Selected',
              ),
              _legend(
                seatBookedColor,
                seatBookedColor,
                'Booked',
              ),
            ],
          ),
          const SizedBox(height: 24),
          Column(
            children: [
              for (int i = 0; i < seatArrangement.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int j = 0;
                          j < seatArrangement[i].length;
                          j++) ...[
                        Seat(
                          key: ValueKey(seatArrangement[i][j]),
                          label: seatArrangement[i][j],
                          isBooked: bookedSeatsList.contains(
                            seatArrangement[i][j],
                          ),
                          isSelected: selectedSeats.contains(
                            seatArrangement[i][j],
                          ),
                          onSelect: (bool isSelected) {
                            onSeatSelected(
                              isSelected,
                              seatArrangement[i][j],
                            );
                          },
                        ),
                        if (isBusinessClass && j == 0)
                          const SizedBox(width: 28),
                        if (!isBusinessClass && j == 1)
                          const SizedBox(width: 28),
                      ]
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class Seat extends StatelessWidget {
  final String label;
  final bool isBooked;
  final bool isSelected;
  final Function(bool) onSelect;

  const Seat({
    super.key,
    required this.label,
    required this.isBooked,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final Color seatColor = isBooked
        ? seatBookedColor
        : isSelected
            ? seatSelectedColor
            : Colors.white;

    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: isBooked
          ? null
          : () {
              onSelect(!isSelected);
            },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.all(6),
        width: 52,
        height: 52,
        decoration: BoxDecoration(
          color: seatColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isBooked
                ? Colors.red.shade300
                : isSelected
                    ? seatSelectedColor
                    : Colors.grey.shade300,
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.event_seat_rounded,
              size: 18,
              color: isBooked || isSelected
                  ? Colors.white
                  : Colors.grey.shade700,
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: isBooked || isSelected
                    ? Colors.white
                    : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}