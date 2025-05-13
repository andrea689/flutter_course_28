import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal.freezed.dart';
part 'animal.g.dart';

@freezed
abstract class Animal with _$Animal {
  const Animal._();

  const factory Animal({
    @JsonKey(name: 'objectId') String? id,
    required String name,
    required int age,
  }) = _Animal;

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);
}
