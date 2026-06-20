
import 'package:freezed_annotation/freezed_annotation.dart';
import 'customer.dart';
import 'bus_schedule.dart';


part 'bus_reservation.freezed.dart';
part 'bus_reservation.g.dart';


@freezed
abstract class BusReservation with _$BusReservation {
  factory BusReservation({
    int? reservationId,
    required Customer customer,
    required BusSchedule busSchedule,
    required int timestamp,
    required String departureDate,
    required int totalSeatBooked,
    required String seatNumbers,
    required String reservationStatus,
    required int totalPrice,
  }) = _BusReservation;

  factory BusReservation.fromJson(Map<String, dynamic> json) => _$BusReservationFromJson(json);
}
