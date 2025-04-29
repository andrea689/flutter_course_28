import 'package:flutter/material.dart';
import 'package:exercise_4/pages/contacts_page/contacts_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ContactsPage());
  }
}
