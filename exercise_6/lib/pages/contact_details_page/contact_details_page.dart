import 'package:exercise_6/pages/contact_details_page/widgets/info_row.dart';
import 'package:exercise_6/pages/contact_upsert_page/contact_upsert_page.dart';
import 'package:exercise_6/cubits/contacts_cubit.dart';
import 'package:exercise_6/widgets/contact_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ContactDetailsPage extends StatelessWidget {
  final String contactId;

  const ContactDetailsPage({super.key, required this.contactId});

  @override
  Widget build(BuildContext context) {
    final contact = context.watch<ContactsCubit>().state.getContactById(
      contactId,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
        actions: [
          IconButton(
            onPressed:
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ContactUpsertPage(contact: contact),
                  ),
                ),
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          ContactImage(imageUrl: contact.imageUrl, size: 200),
          const SizedBox(height: 16),
          InfoRow(label: 'Telefono', value: contact.number.toString()),
          InfoRow(label: 'Indirizzo', value: contact.address),
          InfoRow(
            label: 'Data di nascita',
            value: DateFormat('dd/MM/yyyy').format(contact.birthday),
          ),
        ],
      ),
    );
  }
}
