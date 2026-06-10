import 'package:bus_reservation_system/models/bus_schedule.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingConfirmationPage extends StatefulWidget {
  const BookingConfirmationPage({super.key});

  @override
  State<BookingConfirmationPage> createState() =>
      _BookingConfirmationPageState();
}

class _BookingConfirmationPageState extends State<BookingConfirmationPage> {
  late BusSchedule schedule;
  late String departureDate;
  late int totalSeatsBooked;
  late String seatNumbers;

  bool isFirst = true;

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    nameController.text = 'jane Doe';
    mobileController.text = '01712345678';
    emailController.text = 'jane.doe@example.com';
  }

  @override
  void didChangeDependencies() {
    if (isFirst) {
      final argList = ModalRoute.of(context)!.settings.arguments as List;

      departureDate = argList[0];
      schedule = argList[1];
      seatNumbers = argList[2];
      totalSeatsBooked = argList[3];

      isFirst = false;
    }

    super.didChangeDependencies();
  }

  Widget _detailRow(
    IconData icon,
    String title,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.green,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: GoogleFonts.poppins(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final totalFare = schedule.ticketPrice * totalSeatsBooked;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONFIRMATION',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              'Please confirm your booking details',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 24),

            Text(
              'Passenger Information',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onChanged: (_) => setState(() {}),
                    ),

                    const SizedBox(height: 16),

                    TextFormField(
                      controller: mobileController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        labelText: 'Mobile Number',
                        prefixIcon: Icon(Icons.phone),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your mobile number';
                        }
                        return null;
                      },
                      onChanged: (_) => setState(() {}),
                    ),

                    const SizedBox(height: 16),

                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onChanged: (_) => setState(() {}),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            Text(
              'Booking Details',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _detailRow(
                      Icons.person,
                      'Customer',
                      nameController.text,
                    ),
                    _detailRow(
                      Icons.phone,
                      'Mobile',
                      mobileController.text,
                    ),
                    _detailRow(
                      Icons.email,
                      'Email',
                      emailController.text,
                    ),

                    const Divider(height: 24),

                    _detailRow(
                      Icons.route,
                      'Route',
                      '${schedule.busRoute.cityFrom} → ${schedule.busRoute.cityTo}',
                    ),

                    _detailRow(
                      Icons.calendar_month,
                      'Departure Date',
                      departureDate,
                    ),

                    _detailRow(
                      Icons.access_time,
                      'Departure Time',
                      schedule.departureTime,
                    ),

                    _detailRow(
                      Icons.airline_seat_recline_normal,
                      'Seat Numbers',
                      seatNumbers,
                    ),

                    _detailRow(
                      Icons.confirmation_number,
                      'Total Seats',
                      totalSeatsBooked.toString(),
                    ),

                    _detailRow(
                      Icons.payments,
                      'Ticket Price',
                      '${schedule.ticketPrice}',
                    ),

                    const SizedBox(height: 16),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(.1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.green,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'TOTAL FARE',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '৳ $totalFare',
                            style: GoogleFonts.poppins(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              height: 55,
              child: ElevatedButton.icon(
                onPressed: _confirmBooking,
                icon: const Icon(Icons.check_circle_outline),
                label: Text(
                  'Confirm Booking',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmBooking() {
    if (_formKey.currentState!.validate()) {
      // Proceed with booking confirmation logic
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    super.dispose();
  }
}
