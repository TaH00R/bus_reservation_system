import 'package:bus_reservation_system/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String getFormattedDate(DateTime date) {
  return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
}

void showMessage(BuildContext context, String message) => ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text(message))
        );

Future<bool> saveToken(String token) async{
  final pref = await SharedPreferences.getInstance();
  return pref.setString(accessToken, token);
}

Future<String> getToken() async{
  final pref = await SharedPreferences.getInstance();
  return pref.getString(accessToken) ?? '';
}

Future<bool> saveLoginTime(int time) async{
  final pref = await SharedPreferences.getInstance();
  return pref.setInt(loginTime, time);
}

Future<int> getLoginTime() async{
  final pref = await SharedPreferences.getInstance();
  return pref.getInt(loginTime) ?? 0;
}

Future<bool> saveExpirationDuration(int duration) async{
  final pref = await SharedPreferences.getInstance();
  return pref.setInt(expirationDuration, duration);
}

Future<int> getExpirationDuration() async{
  final pref = await SharedPreferences.getInstance();
  return pref.getInt(expirationDuration) ?? 0;
}

Future<bool> hasTokenExpired() async{
  final loginTime = await getLoginTime();
  final expirationDuration = await getExpirationDuration();
  final currentTime = DateTime.now().millisecondsSinceEpoch;
  return (currentTime - loginTime) > expirationDuration;
}