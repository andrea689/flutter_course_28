import 'package:flutter/material.dart';
import 'package:lesson_6/models/animal.dart';

class AnimalUpsertPage extends StatefulWidget {
  final Animal? animal;
  const AnimalUpsertPage({super.key, this.animal});

  @override
  State<AnimalUpsertPage> createState() => _AnimalUpsertPageState();
}

class _AnimalUpsertPageState extends State<AnimalUpsertPage> {
  late TextEditingController nameController = TextEditingController(
    text: widget.animal?.name,
  );
  late TextEditingController ageController = TextEditingController(
    text: widget.animal?.age.toString(),
  );

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.animal == null ? 'New Animal' : 'Edit Animal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
                validator:
                    (value) => value!.isEmpty ? 'Name is required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: ageController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Age is required';
                  }
                  final intValue = int.tryParse(value);
                  if (intValue == null) {
                    return 'Age must be a number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: submit, child: const Text('Save')),
            ],
          ),
        ),
      ),
    );
  }

  void submit() {
    if (formKey.currentState!.validate() == false) {
      return;
    }

    final age = int.parse(ageController.text);
    Navigator.of(
      context,
    ).pop(Animal(id: widget.animal?.id, name: nameController.text, age: age));
  }
}
