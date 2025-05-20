import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
abstract class Contact with _$Contact {
  const Contact._();

  const factory Contact({
    @JsonKey(name: 'objectId') String? id,
    required String name,
    required String imageUrl,
    @JsonKey(name: 'phone_number') required int number,
    required String address,
    required DateTime birthday,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
