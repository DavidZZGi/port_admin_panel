import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class HorizontalBarChartCard extends StatelessWidget {
  HorizontalBarChartCard({Key? key});

  final List<HorizontalBarChartModel> data = [
    HorizontalBarChartModel(
      label: 'Facility Utilization',
      color: const Color.fromARGB(248, 43, 87, 245),
      value1: 0.6, // Sample value for the first bar
      value2: 0.4, // Sample value for the second bar
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 1,
        titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
                // getTitlesWidget: (value, meta) {
                //   return Text(data[value.toInt()].label);
                // },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            )),
        gridData: FlGridData(
          horizontalInterval: 0.1,
          drawVerticalLine: false,
        ),
        borderData: FlBorderData(
          show: true,
        ),
        barGroups: _chartGroups(),
      ),
    );
  }

  List<BarChartGroupData> _chartGroups() {
    return [
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
            toY: data[0].value1,
            color: data[0].color,
            width: 16,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
            toY: data[0].value2,
            color: data[0].color.withOpacity(0.6),
            width: 16,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
          ),
        ],
      ),
    ];
  }
}

class HorizontalBarChartModel {
  final String label;
  final Color color;
  final double value1;
  final double value2;

  HorizontalBarChartModel({
    required this.label,
    required this.color,
    required this.value1,
    required this.value2,
  });
}
