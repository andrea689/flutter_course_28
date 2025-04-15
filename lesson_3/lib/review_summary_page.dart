import 'package:flutter/material.dart';
import 'package:lesson_3/widgets/payment_card_changer.dart';
import 'package:lesson_3/widgets/price_card.dart';
import 'package:lesson_3/widgets/price_details_card.dart';

class ReviewSummaryPage extends StatelessWidget {
  const ReviewSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Review Summary')),
      body: Stack(
        fit: StackFit.expand,
        children: [
          ListView(
            children: [
              PaymentCardChanger(),
              PriceCard(),
              PriceDetailsCard(),
              SizedBox(height: 100),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 64),
              child: ElevatedButton(onPressed: () {}, child: Text('Continue')),
            ),
          ),
        ],
      ),
    );
  }
}
