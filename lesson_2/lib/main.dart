import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World!'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Elevated'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Text'),
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.red,
            child: Image.network(
              'https://docs.flutter.dev/assets/images/docs/fwe/simple_composition_example.png',
              fit: BoxFit.scaleDown,
            ),
          ),
          Row(
            children: [
              const Icon(Icons.holiday_village),
              const Expanded(
                flex: 1,
                child: Text(
                  'Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(
                flex: 2,
                child: Text(
                  'World World World World World World World World World World World',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                width: 10,
                height: 10,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
      //body: ListView.builder(
      //  scrollDirection: Axis.vertical,
      //  itemCount: 100,
      //  itemBuilder: (context, index) {
      //    return ContactListItem(name: 'Contact $index');
      //  },
      //),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Ciao');
        },
        child: const Icon(Icons.directions_car),
      ),
    );
  }
}

class ContactListItem extends StatelessWidget {
  final String name;

  const ContactListItem({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.cyan,
      ),
      child: Text(name),
    );
  }
}
