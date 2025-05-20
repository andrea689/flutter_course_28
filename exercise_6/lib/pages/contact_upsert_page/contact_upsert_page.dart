import 'package:exercise_6/models/contact.dart';
import 'package:exercise_6/cubits/contacts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ContactUpsertPage extends StatefulWidget {
  final Contact? contact;

  const ContactUpsertPage({super.key, this.contact});

  @override
  State<ContactUpsertPage> createState() => _ContactUpsertPageState();
}

class _ContactUpsertPageState extends State<ContactUpsertPage> {
  final DateFormat dateFormat = DateFormat('dd/MM/yyyy');

  late TextEditingController nameController = TextEditingController(
    text: widget.contact?.name,
  );
  late TextEditingController imageUrlController = TextEditingController(
    text: widget.contact?.imageUrl.toString(),
  );
  late TextEditingController numberController = TextEditingController(
    text: widget.contact?.number.toString(),
  );
  late TextEditingController addressController = TextEditingController(
    text: widget.contact?.address,
  );
  late TextEditingController birthdayController = TextEditingController(
    text:
        widget.contact?.birthday != null
            ? dateFormat.format(widget.contact!.birthday)
            : null,
  );

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    imageUrlController.dispose();
    numberController.dispose();
    addressController.dispose();
    birthdayController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.contact == null ? 'New Contact' : 'Edit Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: nameController,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome e Cognome',
                ),
                validator:
                    (value) =>
                        value!.isEmpty ? 'Nome e Cognome obbligatorio' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: imageUrlController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Immagine',
                ),
                validator:
                    (value) => value!.isEmpty ? 'Immagine obbligatoria' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: numberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Telefono',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Numero di telefono obbligatorio';
                  }
                  final intValue = int.tryParse(value);
                  if (intValue == null) {
                    return 'Numero di telefono non valido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: addressController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Indirizzo',
                ),
                validator:
                    (value) => value!.isEmpty ? 'Indirizzo obbligatorio' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: birthdayController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Data di nascita',
                  hintText: 'gg/mm/aaaa',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Data di nascita obbligatoria';
                  }
                  return null;
                },
                onTap: () async {
                  DateTime? datePicked = await showDatePicker(
                    context: context,
                    initialDate:
                        dateFormat.tryParse(birthdayController.text) ??
                        DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (datePicked != null) {
                    setState(() {
                      birthdayController.text = dateFormat.format(datePicked);
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: submit, child: const Text('Salva')),
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

    final number = int.parse(numberController.text);
    final birthday = dateFormat.parse(birthdayController.text);

    final contact = Contact(
      id: widget.contact?.id ?? DateTime.now().millisecondsSinceEpoch,
      name: nameController.text,
      birthday: birthday,
      address: addressController.text,
      number: number,
      imageUrl: imageUrlController.text,
    );

    if (widget.contact?.id == null) {
      context.read<ContactsCubit>().addContact(contact);
    } else {
      context.read<ContactsCubit>().updateContact(contact);
    }

    Navigator.of(context).pop();
  }
}
