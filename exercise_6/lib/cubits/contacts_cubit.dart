import 'dart:convert';

import 'package:exercise_6/cubits/contacts_state.dart';
import 'package:exercise_6/models/contact.dart';
import 'package:exercise_6/models/contacts_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class ContactsCubit extends Cubit<ContactsState> {
  ContactsCubit() : super(const ContactsState());

  void getContacts() async {
    emit(state.copyWith(isLoading: true, hasError: false));
    try {
      final response = await http.get(
        Uri.parse('https://parseapi.back4app.com/classes/contacts'),
        headers: {
          'X-Parse-Application-Id': 'p1AemwNgwSNLSpkgM2GpidfaZlI2msXSQF2anciZ',
          'X-Parse-REST-API-Key': 'IHzNH49gnvvakUopFw0IsG8ecYXUHiISRBo0Q0l7',
        },
      );
      if (response.statusCode == 200) {
        final contactsResponse = ContactsResponse.fromJson(
          jsonDecode(response.body),
        );
        emit(
          state.copyWith(isLoading: false, contacts: contactsResponse.results),
        );
      } else {
        throw Exception('Failed to GET contacts');
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }

  void addContact(Contact contact) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    try {
      final response = await http.post(
        Uri.parse('https://parseapi.back4app.com/classes/contacts'),
        headers: {
          'X-Parse-Application-Id': 'p1AemwNgwSNLSpkgM2GpidfaZlI2msXSQF2anciZ',
          'X-Parse-REST-API-Key': 'IHzNH49gnvvakUopFw0IsG8ecYXUHiISRBo0Q0l7',
        },
        body: jsonEncode(contact.toJson()),
      );
      if (response.statusCode == 201) {
        // getContacts();
        final objectId = jsonDecode(response.body)['objectId'];
        emit(
          state.copyWith(
            isLoading: false,
            contacts: [...state.contacts, contact.copyWith(id: objectId)],
          ),
        );
      } else {
        throw Exception('Failed to Add contact');
      }
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }

  void updateContact(Contact contact) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    try {
      final response = await http.put(
        Uri.parse(
          'https://parseapi.back4app.com/classes/contacts/${contact.id}',
        ),
        headers: {
          'X-Parse-Application-Id': 'p1AemwNgwSNLSpkgM2GpidfaZlI2msXSQF2anciZ',
          'X-Parse-REST-API-Key': 'IHzNH49gnvvakUopFw0IsG8ecYXUHiISRBo0Q0l7',
        },
        body: jsonEncode(contact.toJson()),
      );
      if (response.statusCode == 200) {
        // getContacts();
        emit(
          state.copyWith(
            isLoading: false,
            contacts:
                List<Contact>.from(state.contacts)
                  ..removeWhere((c) => c.id == contact.id)
                  ..add(contact),
          ),
        );
      } else {
        throw Exception('Failed to Update contact');
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }

  void removeContact(Contact contact) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    try {
      final response = await http.delete(
        Uri.parse(
          'https://parseapi.back4app.com/classes/contacts/${contact.id}',
        ),
        headers: {
          'X-Parse-Application-Id': 'p1AemwNgwSNLSpkgM2GpidfaZlI2msXSQF2anciZ',
          'X-Parse-REST-API-Key': 'IHzNH49gnvvakUopFw0IsG8ecYXUHiISRBo0Q0l7',
        },
      );
      if (response.statusCode == 200) {
        // getContacts();
        emit(
          state.copyWith(
            isLoading: false,
            contacts: List<Contact>.from(state.contacts)
              ..removeWhere((c) => c.id == contact.id),
          ),
        );
      } else {
        throw Exception('Failed to Delete contact');
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }

  void toggleOrder() {
    emit(state.copyWith(isAscending: !state.isAscending));
  }
}
