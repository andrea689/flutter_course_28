import 'package:exercise_5/pages/contact_details_page/contact_details_page.dart';
import 'package:exercise_5/widgets/contact_image.dart';
import 'package:exercise_5/cubits/contacts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:exercise_5/models/contact.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ContactImage(imageUrl: contact.imageUrl, size: 50),
      title: Text(contact.name),
      onTap:
          () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ContactDetailsPage(contactId: contact.id),
            ),
          ),
      trailing: IconButton(
        onPressed: () => context.read<ContactsCubit>().removeContact(contact),
        icon: const Icon(Icons.delete),
      ),
    );
  }
}
