import 'package:flutter/material.dart';
import 'package:port_admin_panel/widgets/triangle_icon.dart';

class UtilizationRow extends StatelessWidget {
  final String title;
  final double utilizationPercentage;

  const UtilizationRow({
    super.key,
    required this.title,
    required this.utilizationPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style:
                  const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 6),
          Expanded(
            child: Container(
              height: 30.0,
              width: 200.0,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: FractionallySizedBox(
                alignment: AlignmentDirectional.centerStart,
                widthFactor: utilizationPercentage / 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 33, 243, 61),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                      child: Text(
                    '$utilizationPercentage%',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UpwardTriangleIcon(),
          )
        ],
      ),
    );
  }
}
