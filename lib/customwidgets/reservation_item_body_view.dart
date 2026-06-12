import 'package:bus_reservation_system/models/reservation_expansion_item.dart';
import 'package:flutter/material.dart';

class ReservationItemBodyView extends StatelessWidget {
  final ReservationExpansionBody body;

  const ReservationItemBodyView({
    super.key,
    required this.body,
  });

  Widget buildRow(
    String title,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            width: 120,
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(
        16,
        0,
        16,
        16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Divider(),

          buildRow(
            "Customer",
            body.customer.customerName,
          ),

          buildRow(
            "Mobile",
            body.customer.mobile,
          ),

          buildRow(
            "Email",
            body.customer.email,
          ),

          buildRow(
            "Seats",
            body.totalSeatBooked.toString(),
          ),

          buildRow(
            "Seat Numbers",
            body.seatNumbers,
          ),

          buildRow(
            "Total Price",
            "₹${body.totalPrice}",
          ),
        ],
      ),
    );
  }
}