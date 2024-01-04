import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  final int number;

  NumberCard({required this.number});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      color: Color.fromARGB(255, 255, 255, 255),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          number.toString(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
