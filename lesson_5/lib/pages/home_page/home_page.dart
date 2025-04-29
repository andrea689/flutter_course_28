import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_5/pages/animal_details_page/animal_details_page.dart';
import 'package:lesson_5/pages/animal_upsert_page/animal_upsert_page.dart';
import 'package:lesson_5/pages/home_page/cubits/animals_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimalsCubit(),
      child: const HomeScaffold(),
    );
  }
}

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final animals = context.watch<AnimalsCubit>().state.animals;

    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder:
            (context, index) => ListTile(
              title: Text(animals[index].name),
              trailing: IconButton(
                onPressed: () async {
                  final newAnimal = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:
                          (context) => AnimalUpsertPage(animal: animals[index]),
                    ),
                  );
                  if (newAnimal != null) {
                    context.read<AnimalsCubit>().updateAnimal(newAnimal);
                  }
                },
                icon: const Icon(Icons.edit),
              ),
              onTap:
                  () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              AnimalDetailsPage(animal: animals[index]),
                    ),
                  ),
            ),
      ),
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

    //return Scaffold(
    //  appBar: AppBar(title: const Text('Home Page')),
    //  body: Center(
    //    child: Column(
    //      mainAxisAlignment: MainAxisAlignment.center,
    //      children: [
    //        const Text('Home Page'),
    //        const SizedBox(height: 16),
    //        ElevatedButton(
    //          onPressed: () async {
    //            /// Navigazione semplice
    //            final isSuccess = await Navigator.of(context).push(
    //              MaterialPageRoute(
    //                builder: (context) => const DetailsPage(id: 'Asdw234sfd'),
    //              ),
    //            );
    //            print('isSuccess: $isSuccess');
    //
    //            /// Navigazione named route
    //            //final isSuccess = await Navigator.of(
    //            //  context,
    //            //).pushNamed('/details', arguments: 'Asdw234sfd');
    //            //print('isSuccess: $isSuccess');
    //
    //            /// Navigazione con GoRouter
    //            //context.go('/details/Asdw234sfd');
    //          },
    //          child: const Text('Details'),
    //        ),
    //      ],
    //    ),
    //  ),
    //);
  }
}
