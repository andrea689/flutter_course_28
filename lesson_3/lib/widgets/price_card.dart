import 'package:flutter/material.dart';
import 'package:lesson_3/ui_utils.dart';
import 'package:lesson_3/widgets/price_card_label.dart';

class PriceCard extends StatelessWidget {
  const PriceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: UiUtils.myGradient,
      ),
      child: Column(
        children: [
          Icon(Icons.star_rate, size: 56),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '\$8.99',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8),
              Text('/month'),
            ],
          ),
          Divider(height: 32),
          PriceCardLabel(label: '1 Premium account'),
          SizedBox(height: 8),
          PriceCardLabel(label: 'Cancel anytime'),
          SizedBox(height: 8),
          PriceCardLabel(label: 'Subscribe or one-time paymaent'),
        ],
      ),
    );
  }
}
