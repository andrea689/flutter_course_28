import 'package:exercise_5/pages/contact_upsert_page/contact_upsert_page.dart';
import 'package:exercise_5/cubits/contacts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:exercise_5/pages/contacts_page/widgets/contact_item.dart';
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
    final contacts = context.watch<ContactsCubit>().state.sortedContacts;

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
      body: ListView.separated(
        itemCount: contacts.length,
        itemBuilder: (context, index) => ContactItem(contact: contacts[index]),
        separatorBuilder: (context, index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
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
