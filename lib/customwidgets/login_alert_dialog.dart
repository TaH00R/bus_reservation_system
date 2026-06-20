
import 'package:flutter/material.dart';

class ShowLoginAlertDialog extends StatelessWidget {
  const ShowLoginAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Login Required'),
      content: const Text('You need to be logged in to perform this action.'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); 
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(); 
            Navigator.of(context).pushNamed('/login'); 
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}