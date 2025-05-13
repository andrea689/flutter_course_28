// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animals_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnimalsResponse _$AnimalsResponseFromJson(Map<String, dynamic> json) =>
    _AnimalsResponse(
      results:
          (json['results'] as List<dynamic>)
              .map((e) => Animal.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$AnimalsResponseToJson(_AnimalsResponse instance) =>
    <String, dynamic>{'results': instance.results};
