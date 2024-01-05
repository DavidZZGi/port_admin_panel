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

        columnSpacing: 38,

        showCheckboxColumn: false, // Oculta la columna de checkbox

        columns: const [
          DataColumn(
              label: Text(
            'Coastal Guardian',
            style: TextStyle(fontSize: 12),
          )),
          DataColumn(label: Icon(Icons.local_shipping)),
          DataColumn(label: Icon(Icons.checkroom)),
          DataColumn(label: Icon(Icons.directions_boat)),
          DataColumn(label: Icon(Icons.local_gas_station)),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(
                Text('Ocean Voyager', style: TextStyle(color: Colors.black))),
            DataCell(SizedBox()),
            DataCell(Icon(Icons.checkroom)),
            DataCell(Icon(Icons.directions_boat)),
            DataCell(Icon(Icons.local_gas_station)),

            // Add other relevant cells here
          ]),
          DataRow(cells: [
            DataCell(
                Text('Harbor Explorer', style: TextStyle(color: Colors.black))),
            DataCell(SizedBox()),
            DataCell(SizedBox()),
            DataCell(Icon(Icons.directions_boat)),
            DataCell(Icon(Icons.local_gas_station)),

            // Add other relevant cells here
          ]),
          DataRow(cells: [
            DataCell(
                Text('Sea Guardian', style: TextStyle(color: Colors.black))),
            DataCell(SizedBox()),
            DataCell(SizedBox()),
            DataCell(SizedBox()),
            DataCell(Icon(Icons.local_gas_station)),

            // Add other relevant cells here
          ]),
          DataRow(cells: [
            DataCell(
                Text('Coastal Pioneer', style: TextStyle(color: Colors.black))),
            DataCell(SizedBox()),
            DataCell(SizedBox()),
            DataCell(Icon(Icons.directions_boat)),
            DataCell(Icon(Icons.local_gas_station)),

            // Add other relevant cells here
          ]),

          // Add more rows as needed
        ],
      ),
    );
  }
}
