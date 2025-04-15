import 'package:flutter/material.dart';
import 'package:lesson_3/widgets/price_details_card_price_line.dart';

class PriceDetailsCard extends StatelessWidget {
  const PriceDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          PriceDetailsCardPriceLine(label: 'Amount', price: 8.99),
          SizedBox(height: 16),
          PriceDetailsCardPriceLine(label: 'Tax', price: 1.99),
          Divider(height: 32),
          PriceDetailsCardPriceLine(label: 'Total', price: 10.98),
        ],
      ),
    );
  }
}
