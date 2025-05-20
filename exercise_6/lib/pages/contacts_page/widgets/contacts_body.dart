import 'package:exercise_6/cubits/contacts_cubit.dart';
import 'package:exercise_6/pages/contacts_page/widgets/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsBody extends StatelessWidget {
  const ContactsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ContactsCubit>().state;
    final contacts = state.sortedContacts;

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.hasError) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Unexpected error'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => context.read<ContactsCubit>().getContacts(),
              child: const Text('Riprova'),
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      itemCount: contacts.length,
      itemBuilder: (context, index) => ContactItem(contact: contacts[index]),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
