import 'package:exercise_5/cubits/contacts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:exercise_5/pages/contacts_page/contacts_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactsCubit(),
      child: const MaterialApp(home: ContactsPage()),
    );
  }
}
