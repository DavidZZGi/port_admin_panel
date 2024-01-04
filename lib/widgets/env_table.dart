import 'package:flutter/material.dart';
import 'package:port_admin_panel/widgets/number_card.dart';

class EnvTable extends StatelessWidget {
  const EnvTable({super.key});
  final letterColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        dataTextStyle: const TextStyle(
          fontSize: 12,
        ),

        showCheckboxColumn: false, // Oculta la columna de checkbox

        columns: [
          const DataColumn(label: Text('Safety Incident :')),
          DataColumn(
              label: NumberCard(
            number: 80500,
          )),
        ],
        rows: [
          DataRow(cells: [
            const DataCell(Text('  Emissions Levels :',
                style: TextStyle(color: Colors.black))),
            DataCell(NumberCard(
              number: 20500,
            )),

            // Add other relevant cells here
          ]),
          DataRow(cells: [
            const DataCell(Text(' Waste Managament :',
                style: TextStyle(color: Colors.black))),
            DataCell(NumberCard(
              number: 10000,
            )),

            // Add other relevant cells here
          ]),
          DataRow(cells: [
            const DataCell(Text('Energy Consumption :',
                style: TextStyle(color: Colors.black))),
            DataCell(NumberCard(
              number: 10000,
            )),

            // Add other relevant cells here
          ]),
          DataRow(cells: [
            const DataCell(Text(' Energy Consumption :',
                style: TextStyle(color: Colors.black))),
            DataCell(NumberCard(
              number: 10000,
            )),

            // Add other relevant cells here
          ]),

          // Add more rows as needed
        ],
      ),
    );
  }
}
