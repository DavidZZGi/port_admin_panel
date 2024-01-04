import 'package:flutter/material.dart';

class EnvTable extends StatelessWidget {
  const EnvTable({super.key});
  final letterColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(18)),
      child: const Column(children: [
        ListTile(
          title: Text('Safety Incident :'),
          trailing: Chip(
            label: Text(
              "20,500",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        ListTile(
          title: Text('Emissions Levels :'),
          trailing: Chip(
            label: Text(
              "1,500",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        ListTile(
          title: Text('Waste Managament :'),
          trailing: Chip(
            label: Text(
              "500",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        ListTile(
          title: Text('Energy Consumption :'),
          trailing: Chip(
            label: Text(
              "500",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ]),
    );
  }
}
