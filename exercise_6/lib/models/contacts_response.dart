import 'package:exercise_6/models/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_response.freezed.dart';
part 'contacts_response.g.dart';

@freezed
abstract class ContactsResponse with _$ContactsResponse {
  const ContactsResponse._();

  const factory ContactsResponse({required List<Contact> results}) =
      _ContactsResponse;

  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);
}
