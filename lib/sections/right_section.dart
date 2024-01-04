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
    return const Column(
      children: [
        CardWidget(title: 'Weather'),
        SizedBox(
          height: 10,
        ),
        ContainerBody(
          child: WeatherChart(),
        ),
        SizedBox(
          height: 10,
        ),
        CardWidget(title: 'Enviromental Metrics'),
        SizedBox(
          height: 10,
        ),
        ContainerBody(
          child: EnvTable(),
        )
      ],
    );
  }
}
