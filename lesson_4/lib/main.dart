import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_4/counter_cubit.dart';
import 'package:lesson_4/widgets/playlists_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    print('Build MyHomePage');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            MyTextCounter1(),
            MyTextCounter2(),
            PlaylistsList(),
          ],
        ),
      ),
      floatingActionButton: const MyButton(),
    );
  }
}

class MyTextCounter1 extends StatelessWidget {
  const MyTextCounter1({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build MyTextCounter1');
    final counter = context.select(
      (CounterCubit cubit) => cubit.state.counter1,
    );

    return Text('$counter', style: Theme.of(context).textTheme.headlineMedium);
  }
}

class MyTextCounter2 extends StatelessWidget {
  const MyTextCounter2({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build MyTextCounter2');
    final counter = context.select(
      (CounterCubit cubit) => cubit.state.counter2,
    );

    return Text('$counter', style: Theme.of(context).textTheme.headlineMedium);
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build MyButton');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().incrementCounter1();
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 8),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().incrementCounter2();
          },
          child: const Icon(Icons.add_alarm),
        ),
        const SizedBox(height: 8),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().getPlaylists();
          },
          child: const Icon(Icons.music_note),
        ),
      ],
    );
  }
}
