import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_6/pages/animal_details_page/animal_details_page.dart';
import 'package:lesson_6/pages/animal_upsert_page/animal_upsert_page.dart';
import 'package:lesson_6/pages/home_page/cubits/animals_cubit.dart';

class AnimalsList extends StatelessWidget {
  const AnimalsList({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AnimalsCubit>().state;
    final animals = state.animals;
    final isLoading = state.isLoading;
    final hasError = state.hasError;

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (hasError) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Unexpecter Error'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => context.read<AnimalsCubit>().getAnimals(),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (animals.isEmpty) {
      return const Center(child: Text('No animals'));
    }

    return ListView.builder(
      itemCount: animals.length,
      itemBuilder:
          (context, index) => ListTile(
            title: Text(animals[index].name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () async {
                    final newAnimal = await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                AnimalUpsertPage(animal: animals[index]),
                      ),
                    );
                    if (newAnimal != null) {
                      context.read<AnimalsCubit>().updateAnimal(newAnimal);
                    }
                  },
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () async {
                    context.read<AnimalsCubit>().deleteAnimal(animals[index]);
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
            onTap:
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:
                        (context) => AnimalDetailsPage(animal: animals[index]),
                  ),
                ),
          ),
    );
  }
}
