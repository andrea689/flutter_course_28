import 'package:flutter/material.dart';

class PriceDetailsCardPriceLine extends StatelessWidget {
  final String label;
  final double price;

  const PriceDetailsCardPriceLine({
    super.key,
    required this.label,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(label)),
        Text('\$$price', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
