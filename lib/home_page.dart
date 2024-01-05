import 'package:flutter/material.dart';
import 'package:port_admin_panel/sections/center_section.dart';
import 'package:port_admin_panel/sections/header_section.dart';
import 'package:port_admin_panel/sections/left_section.dart';
import 'package:port_admin_panel/sections/right_section.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              portName: 'Port Liberty Harbor',
              utlNumber: '35',
            ),
            Divider(),
            Row(
              children: [
                Expanded(child: LeftSection()),
                Expanded(child: CenterSection()),
                Expanded(child: RightSection()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
