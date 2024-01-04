import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Container(
              height: 30.0,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color.fromARGB(255, 189, 188, 188)),
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
        ],
      ),
    );
  }
}
