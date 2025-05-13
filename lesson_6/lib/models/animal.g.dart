// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Animal _$AnimalFromJson(Map<String, dynamic> json) => _Animal(
  id: json['objectId'] as String?,
  name: json['name'] as String,
  age: (json['age'] as num).toInt(),
);

Map<String, dynamic> _$AnimalToJson(_Animal instance) => <String, dynamic>{
  'objectId': instance.id,
  'name': instance.name,
  'age': instance.age,
};
