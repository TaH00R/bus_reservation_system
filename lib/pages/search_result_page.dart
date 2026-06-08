import 'package:bus_reservation_system/models/bus_schedule.dart';
import 'package:bus_reservation_system/providers/app_data_provider.dart';
import 'package:bus_reservation_system/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  @override
  Widget build(BuildContext context) {
    final argList = ModalRoute.of(context)!.settings.arguments as List;
    final busRoute = argList[0];
    final departureDate = argList[1];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Buses'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text(
                    '${busRoute.cityFrom} → ${busRoute.cityTo}',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.calendar_month, size: 18),
                      const SizedBox(width: 6),
                      Text(
                        departureDate,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Consumer<AppDataProvider>(
              builder: (context, provider, child) =>
                  FutureBuilder<List<BusSchedule>>(
                future:
                    provider.getSchedulesByRouteName(busRoute.routeName),
                builder: (context, snapshot) {
                  if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  if (snapshot.hasError) {
                    return const Center(
                      child: Text('An error occurred!'),
                    );
                  }

                  if (provider.scheduleList.isEmpty) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Text(
                          'No buses available for this route.',
                        ),
                      ),
                    );
                  }

                  return Column(
                    children: provider.scheduleList
                        .map(
                          (schedule) => ScheduleItemView(
                            date: departureDate,
                            schedule: schedule,
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScheduleItemView extends StatelessWidget {
  final String date;
  final BusSchedule schedule;

  const ScheduleItemView({
    super.key,
    required this.date,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                schedule.bus.busName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(schedule.bus.busType),
              ),
              trailing: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '$currency${schedule.ticketPrice}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade800,
                  ),
                ),
              ),
            ),
    
            const Divider(),
    
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  schedule.busRoute.cityFrom,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.arrow_forward),
                const SizedBox(width: 10),
                Text(
                  schedule.busRoute.cityTo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
    
            const SizedBox(height: 16),
    
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      size: 18,
                    ),
                    const SizedBox(width: 6),
                    Text(date),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.event_seat,
                      size: 18,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '${schedule.bus.totalSeat} Seats',
                    ),
                  ],
                ),
              ],
            ),
    
            const SizedBox(height: 16),
    
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                foregroundColor: Colors.white,
                minimumSize: const Size(120, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
               Navigator.pushNamed(context, routeNameSeatPlanPage, arguments: [schedule, date]);
              },
              child: const Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}