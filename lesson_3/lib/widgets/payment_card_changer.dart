import 'package:flutter/material.dart';
import 'package:lesson_3/ui_utils.dart';

class PaymentCardChanger extends StatelessWidget {
  const PaymentCardChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: UiUtils.myGradient,
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyPwwJsdhpzfOZWwbYlGfUW-KrDFXL1EzmbQ&s',
                  width: 40,
                ),
                Text('**** **** **** 8765'),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Change', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
