import 'package:flutter/material.dart';
import 'package:port_admin_panel/widgets/bar_chart.dart';
import 'package:port_admin_panel/widgets/card_title.dart';
import 'package:port_admin_panel/widgets/container_body.dart';
import 'package:port_admin_panel/widgets/jobs_state_widget.dart';
import 'package:port_admin_panel/widgets/utilization_bar.dart';

class LeftSection extends StatefulWidget {
  const LeftSection({super.key});

  @override
  State<LeftSection> createState() => _LeftSectionState();
}

class _LeftSectionState extends State<LeftSection> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        const CardWidget(title: 'Jobs'),
        const SizedBox(
          height: 10,
        ),
        const ContainerBody(child: JobsStateWidget()),
        const SizedBox(
          height: 10,
        ),
        const CardWidget(title: 'Facility Utilization'),
        const SizedBox(
          height: 10,
        ),
        ContainerBody(
          child: Column(
            children: [
              UtilizationRow(
                title: 'F1',
                utilizationPercentage: 75.0,
              ),
              UtilizationRow(
                title: 'F2',
                utilizationPercentage: 20.0,
              ),
              UtilizationRow(
                title: 'F3',
                utilizationPercentage: 50.0,
              ),
            ],
          ),

          //HorizontalBarChartCard(),
        )
      ],
    );
  }
}
