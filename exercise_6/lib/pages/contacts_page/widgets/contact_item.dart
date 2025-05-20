import 'package:exercise_6/pages/contact_details_page/contact_details_page.dart';
import 'package:exercise_6/widgets/contact_image.dart';
import 'package:exercise_6/cubits/contacts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:exercise_6/models/contact.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    final contactId = contact.id;
    if (contactId == null) {
      throw Exception('Contact id is null');
    }

    return ListTile(
      leading: ContactImage(imageUrl: contact.imageUrl, size: 50),
      title: Text(contact.name),
      onTap:
          () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ContactDetailsPage(contactId: contactId),
            ),
          ),
      trailing: IconButton(
        onPressed: () => context.read<ContactsCubit>().removeContact(contact),
        icon: const Icon(Icons.delete),
      ),
    );
  }
}
