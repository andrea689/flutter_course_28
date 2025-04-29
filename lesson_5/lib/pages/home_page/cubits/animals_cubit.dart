import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_5/models/animal.dart';
import 'package:lesson_5/pages/home_page/cubits/animals_state.dart';

class AnimalsCubit extends Cubit<AnimalsState> {
  AnimalsCubit()
    : super(
        const AnimalsState(
          animals: [
            Animal(id: 1, name: 'Cat', age: 5),
            Animal(id: 2, name: 'Dog', age: 3),
            Animal(id: 3, name: 'Horse', age: 4),
            Animal(id: 4, name: 'Mouse', age: 2),
            Animal(id: 5, name: 'Pig', age: 1),
            Animal(id: 6, name: 'Rabbit', age: 2),
          ],
        ),
      );

  void addAnimal(Animal animal) {
    emit(state.copyWith(animals: [...state.animals, animal]));
  }

  void updateAnimal(Animal animal) {
    final newAnimals = List<Animal>.from(state.animals);
    final index = newAnimals.indexWhere((a) => a.id == animal.id);
    newAnimals.removeWhere((a) => a.id == animal.id);
    newAnimals.insert(index, animal);
    emit(state.copyWith(animals: newAnimals));
  }
}
