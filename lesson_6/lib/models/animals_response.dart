import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lesson_6/models/animal.dart';

part 'animals_response.freezed.dart';
part 'animals_response.g.dart';

@freezed
abstract class AnimalsResponse with _$AnimalsResponse {
  const AnimalsResponse._();

  const factory AnimalsResponse({required List<Animal> results}) =
      _AnimalsResponse;

  factory AnimalsResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimalsResponseFromJson(json);
}
