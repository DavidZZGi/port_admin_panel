import 'package:flutter/material.dart';
import 'package:port_admin_panel/widgets/card_title.dart';
import 'package:port_admin_panel/widgets/container_body.dart';
import 'package:port_admin_panel/widgets/data_table_widget.dart';
import 'package:port_admin_panel/widgets/pie_chart.dart';

class CenterSection extends StatefulWidget {
  const CenterSection({super.key});

  @override
  State<CenterSection> createState() => _LeftSectionState();
}

class _LeftSectionState extends State<CenterSection> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardWidget(title: 'Vessels in Port'),
        SizedBox(
          height: 10,
        ),
        ContainerBody(
          child: VasselTable(),
        ),
        SizedBox(
          height: 10,
        ),
        CardWidget(title: 'Commodities in Port'),
        SizedBox(
          height: 10,
        ),
        ContainerBody(
          child: PieChartWidget(),
        )
      ],
    );
  }
}
