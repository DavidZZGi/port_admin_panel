import 'package:flutter/material.dart';
import 'package:port_admin_panel/widgets/number_card.dart';

class JobsStateWidget extends StatelessWidget {
  const JobsStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            DataTable(
              dataTextStyle: const TextStyle(
                fontSize: 14,
              ),
              columnSpacing: 90,
              showCheckboxColumn: false, // Oculta la columna de checkbox

              columns: [
                const DataColumn(
                    label: Text(
                  'Active Jobs :',
                  style: TextStyle(fontSize: 14),
                )),
                DataColumn(
                    label: NumberCard(
                  number: 80500,
                )),
              ],
              rows: [
                DataRow(cells: [
                  const DataCell(Text('Pending Jobs :',
                      style: TextStyle(color: Colors.black))),
                  DataCell(NumberCard(
                    number: 20500,
                  )),

                  // Add other relevant cells here
                ]),
                DataRow(cells: [
                  const DataCell(Text('Completed Jobs :',
                      style: TextStyle(color: Colors.black))),
                  DataCell(NumberCard(
                    number: 63000,
                  )),

                  // Add other relevant cells here
                ]),
                DataRow(cells: [
                  const DataCell(Text('Cancelled Jobs :',
                      style: TextStyle(color: Colors.black))),
                  DataCell(NumberCard(
                    number: 10000,
                  )),

                  // Add other relevant cells here
                ]),

                // Add more rows as needed
              ],
            ),
          ],
        ),
      ),
    );
  }
}
