import 'package:exercise_6/pages/contact_upsert_page/contact_upsert_page.dart';
import 'package:exercise_6/cubits/contacts_cubit.dart';
import 'package:exercise_6/pages/contacts_page/widgets/contacts_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContactsScaffold();
  }
}

class ContactsScaffold extends StatelessWidget {
  const ContactsScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        actions: [
          IconButton(
            onPressed: () => context.read<ContactsCubit>().toggleOrder(),
            icon: const Icon(Icons.sort_by_alpha),
          ),
        ],
      ),
      body: const ContactsBody(),
      floatingActionButton: FloatingActionButton(
        heroTag: 'addContact',
        onPressed:
            () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ContactUpsertPage(),
              ),
            ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
