import 'package:flutter/material.dart';

class VasselTable extends StatelessWidget {
  const VasselTable({super.key});
  final letterColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        dataTextStyle: const TextStyle(
          fontSize: 12,
        ),

        columnSpacing: 40,

        showCheckboxColumn: false, // Oculta la columna de checkbox

        columns: const [
          DataColumn(label: Text('Vessel Type')),
          DataColumn(label: Icon(Icons.local_shipping)),
          DataColumn(label: Icon(Icons.checkroom)),
          DataColumn(label: Icon(Icons.directions_boat)),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(
                Text('Ocean Voyager', style: TextStyle(color: Colors.black))),
            DataCell(Icon(Icons.local_shipping)),
            DataCell(Icon(Icons.checkroom)),
            DataCell(Icon(Icons.directions_boat)),

            // Add other relevant cells here
          ]),
          DataRow(cells: [
            DataCell(
                Text('Harbor Explorer', style: TextStyle(color: Colors.black))),
            DataCell(Icon(Icons.local_shipping)),
            DataCell(Icon(Icons.checkroom)),
            DataCell(Icon(Icons.directions_boat)),

            // Add other relevant cells here
          ]),
          DataRow(cells: [
            DataCell(
                Text('Sea Guardian', style: TextStyle(color: Colors.black))),
            DataCell(Icon(Icons.local_shipping)),
            DataCell(Icon(Icons.checkroom)),
            DataCell(Icon(Icons.directions_boat)),

            // Add other relevant cells here
          ]),
          DataRow(cells: [
            DataCell(
                Text('Coastal Pioneer', style: TextStyle(color: Colors.black))),
            DataCell(Icon(Icons.local_shipping)),
            DataCell(Icon(Icons.checkroom)),
            DataCell(Icon(Icons.directions_boat)),

            // Add other relevant cells here
          ]),

          // Add more rows as needed
        ],
      ),
    );
  }
}
