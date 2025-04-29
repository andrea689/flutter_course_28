import 'package:exercise_4/pages/contacts_page/widgets/contact_image.dart';
import 'package:exercise_4/pages/contacts_page/cubits/contacts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:exercise_4/model/contact.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ContactImage(imageUrl: contact.imageUrl, size: 50),
      title: Text(contact.name),
      onTap: () => print('Tapped ${contact.name}'),
      trailing: IconButton(
        onPressed: () => context.read<ContactsCubit>().removeContact(contact),
        icon: const Icon(Icons.delete),
      ),
    );
  }
}
