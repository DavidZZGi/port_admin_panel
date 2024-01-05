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
    return Column(
      children: [
        const CardWidget(title: 'Jobs'),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.28,
            child: const ContainerBody(child: JobsStateWidget())),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.28,
            child: const CardWidget(title: 'Facility Utilization')),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.30,
          child: ContainerBody(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UtilizationRow(
                  title: 'F1',
                  utilizationPercentage: 75.0,
                ),
                UtilizationRow(
                  title: 'F2',
                  utilizationPercentage: 50.0,
                ),
                UtilizationRow(
                  title: 'F3',
                  utilizationPercentage: 95.0,
                ),
              ],
            ),

            //HorizontalBarChartCard(),
          ),
        )
      ],
    );
  }
}
