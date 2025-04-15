import 'package:flutter/material.dart';

class PriceCardLabel extends StatelessWidget {
  final String label;

  const PriceCardLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.verified_outlined),
        SizedBox(width: 8),
        Expanded(child: Text(label)),
      ],
    );
  }
}
