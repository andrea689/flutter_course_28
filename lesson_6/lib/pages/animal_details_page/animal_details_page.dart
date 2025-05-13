import 'package:flutter/material.dart';
import 'package:lesson_6/models/animal.dart';

class AnimalDetailsPage extends StatelessWidget {
  final Animal animal;

  const AnimalDetailsPage({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Page')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('ID: ${animal.id}'),
            const SizedBox(height: 16),
            Text('Nome: ${animal.name}'),
            const SizedBox(height: 16),
            Text('Età: ${animal.age}'),
          ],
        ),
      ),
    );
  }
}
