import 'package:bus_reservation_system/customwidgets/reservation_item_body_view.dart';
import 'package:bus_reservation_system/customwidgets/reservation_item_header_view.dart';
import 'package:bus_reservation_system/models/reservation_expansion_item.dart';
import 'package:bus_reservation_system/providers/app_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  bool isLoading = true;

  List<ReservationExpansionItem> items = [];
  List<ReservationExpansionItem> filteredItems = [];

  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      _loadReservations();
    });
  }

  Future<void> _loadReservations() async {
    await Provider.of<AppDataProvider>(
      context,
      listen: false,
    ).getAllReservation();

    items = Provider.of<AppDataProvider>(
      context,
      listen: false,
    ).getReservationItem();

    filteredItems = List.from(items);

    setState(() {
      isLoading = false;
    });
  }

  void _search(String query) {
    if (query.trim().isEmpty) {
      setState(() {
        filteredItems = List.from(items);
      });
      return;
    }

    setState(() {
      filteredItems = items.where((item) {
        return item.body.customer.mobile.toLowerCase().contains(
          query.toLowerCase(),
        );
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reservation List'), centerTitle: true),

      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16),

              child: Column(
                children: [
                  TextField(
                    controller: searchController,
                    onChanged: _search,
                    decoration: InputDecoration(
                      hintText: 'Search with Mobile',
                      prefixIcon: const Icon(Icons.search),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredItems.length,
                      itemBuilder: (context, index) {
                        final item = filteredItems[index];

                        return Card(
                          margin: const EdgeInsets.only(bottom: 12),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ExpansionTile(
                            tilePadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),

                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.header.departureDate,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),

                                const SizedBox(height: 4),

                                Text(
                                  '${item.header.schedule.busRoute.cityFrom} ➜ ${item.header.schedule.busRoute.cityTo}',
                                ),

                                Text(
                                  item.header.schedule.bus.busName,
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),

                                const SizedBox(height: 4),

                                Text(
                                  'Status: ${item.header.reservationStatus}',
                                  style: TextStyle(
                                    color:
                                        item.header.reservationStatus
                                                .toLowerCase() ==
                                            "confirmed"
                                        ? Colors.green
                                        : Colors.orange,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),

                            children: [
                              ReservationItemBodyView(body: item.body),
                            ],
                          ),
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
