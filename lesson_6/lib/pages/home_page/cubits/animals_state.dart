import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lesson_6/models/animal.dart';

part 'animals_state.freezed.dart';

@freezed
abstract class AnimalsState with _$AnimalsState {
  const AnimalsState._();

  const factory AnimalsState({
    @Default([]) List<Animal> animals,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _AnimalsState;
}
