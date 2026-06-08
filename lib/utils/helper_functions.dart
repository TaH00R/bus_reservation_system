import 'package:flutter/material.dart';

String getFormattedDate(DateTime date) {
  return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
}

void showMessage(BuildContext context, String message) => ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text(message))
        );