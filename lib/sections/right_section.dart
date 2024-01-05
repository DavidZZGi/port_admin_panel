import 'package:flutter/material.dart';
import 'package:port_admin_panel/widgets/card_title.dart';
import 'package:port_admin_panel/widgets/container_body.dart';
import 'package:port_admin_panel/widgets/env_table.dart';
import 'package:port_admin_panel/widgets/pie_chart.dart';
import 'package:port_admin_panel/widgets/waether_display_widget.dart';
import 'package:port_admin_panel/widgets/weather_widget.dart';

class RightSection extends StatefulWidget {
  const RightSection({super.key});

  @override
  State<RightSection> createState() => _LeftSectionState();
}

class _LeftSectionState extends State<RightSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CardWidget(title: 'Weather'),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.28,
          child: const ContainerBody(
            child: WeatherChart(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const CardWidget(title: 'Enviromental Metrics'),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.3,
          child: const ContainerBody(
            child: EnvTable(),
          ),
        )
      ],
    );
  }
}
