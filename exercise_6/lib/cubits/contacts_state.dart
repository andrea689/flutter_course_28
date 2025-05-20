import 'package:exercise_6/models/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_state.freezed.dart';

@freezed
abstract class ContactsState with _$ContactsState {
  const ContactsState._();

  const factory ContactsState({
    @Default([]) List<Contact> contacts,
    @Default(false) bool isAscending,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _ContactsState;

  List<Contact> get sortedContacts => List<Contact>.from(contacts)..sort(
    (a, b) =>
        isAscending
            ? b.name.toLowerCase().compareTo(a.name.toLowerCase())
            : a.name.toLowerCase().compareTo(b.name.toLowerCase()),
  );

  Contact getContactById(String id) => contacts.firstWhere((c) => c.id == id);
}
