import 'package:exercise_2/models/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: const TextStyle(fontSize: 24)),
                  Text(product.description),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Text('${product.price.toStringAsFixed(2)}€'),
          ],
        ),
      ),
    );
  }
}
