// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Contact _$ContactFromJson(Map<String, dynamic> json) => _Contact(
  id: json['objectId'] as String?,
  name: json['name'] as String,
  imageUrl: json['imageUrl'] as String,
  number: (json['phone_number'] as num).toInt(),
  address: json['address'] as String,
  birthday: DateTime.parse(json['birthday'] as String),
);

Map<String, dynamic> _$ContactToJson(_Contact instance) => <String, dynamic>{
  'objectId': instance.id,
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'phone_number': instance.number,
  'address': instance.address,
  'birthday': instance.birthday.toIso8601String(),
};
