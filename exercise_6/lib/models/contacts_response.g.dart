// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactsResponse _$ContactsResponseFromJson(Map<String, dynamic> json) =>
    _ContactsResponse(
      results:
          (json['results'] as List<dynamic>)
              .map((e) => Contact.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ContactsResponseToJson(_ContactsResponse instance) =>
    <String, dynamic>{'results': instance.results};
