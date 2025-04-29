import 'package:exercise_4/model/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_state.freezed.dart';

@freezed
abstract class ContactsState with _$ContactsState {
  const ContactsState._();

  const factory ContactsState({
    @Default([]) List<Contact> contacts,
    @Default(false) bool isAscending,
  }) = _ContactsState;

  List<Contact> get sortedContacts => List<Contact>.from(contacts)..sort(
    (a, b) =>
        isAscending
            ? b.name.toLowerCase().compareTo(a.name.toLowerCase())
            : a.name.toLowerCase().compareTo(b.name.toLowerCase()),
  );
}
