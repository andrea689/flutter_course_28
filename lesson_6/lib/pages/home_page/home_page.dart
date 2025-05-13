import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_6/pages/animal_upsert_page/animal_upsert_page.dart';
import 'package:lesson_6/pages/home_page/cubits/animals_cubit.dart';
import 'package:lesson_6/pages/home_page/widgets/animals_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimalsCubit()..getAnimals(),
      child: const HomeScaffold(),
    );
  }
}

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const AnimalsList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newAnimal = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AnimalUpsertPage()),
          );
          if (newAnimal != null) {
            context.read<AnimalsCubit>().addAnimal(newAnimal);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
