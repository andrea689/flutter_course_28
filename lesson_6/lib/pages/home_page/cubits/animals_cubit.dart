import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:lesson_6/models/animal.dart';
import 'package:lesson_6/models/animals_response.dart';
import 'package:lesson_6/pages/home_page/cubits/animals_state.dart';

class AnimalsCubit extends Cubit<AnimalsState> {
  AnimalsCubit() : super(const AnimalsState());

  void getAnimals() async {
    emit(state.copyWith(isLoading: true, hasError: false));
    try {
      final response = await http.get(
        Uri.parse('https://parseapi.back4app.com/classes/animals'),
        headers: {
          'X-Parse-Application-Id': 'p1AemwNgwSNLSpkgM2GpidfaZlI2msXSQF2anciZ',
          'X-Parse-REST-API-Key': 'IHzNH49gnvvakUopFw0IsG8ecYXUHiISRBo0Q0l7',
        },
      );
      if (response.statusCode == 200) {
        final animalsResponse = AnimalsResponse.fromJson(
          jsonDecode(response.body),
        );
        emit(
          state.copyWith(animals: animalsResponse.results, isLoading: false),
        );
      } else {
        throw Exception('Failed to GET animals');
      }
    } catch (e, s) {
      emit(state.copyWith(isLoading: false, hasError: true));
      print(e);
      print(s);
    }
  }

  void addAnimal(Animal animal) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    try {
      final response = await http.post(
        Uri.parse('https://parseapi.back4app.com/classes/animals'),
        headers: {
          'X-Parse-Application-Id': 'p1AemwNgwSNLSpkgM2GpidfaZlI2msXSQF2anciZ',
          'X-Parse-REST-API-Key': 'IHzNH49gnvvakUopFw0IsG8ecYXUHiISRBo0Q0l7',
        },
        body: jsonEncode(animal.toJson()),
      );
      if (response.statusCode == 201) {
        getAnimals();
      } else {
        throw Exception('Failed to POST animal');
      }
    } catch (e, s) {
      emit(state.copyWith(isLoading: false, hasError: true));
      print(e);
      print(s);
    }
  }

  void updateAnimal(Animal animal) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    try {
      final response = await http.put(
        Uri.parse('https://parseapi.back4app.com/classes/animals/${animal.id}'),
        headers: {
          'X-Parse-Application-Id': 'p1AemwNgwSNLSpkgM2GpidfaZlI2msXSQF2anciZ',
          'X-Parse-REST-API-Key': 'IHzNH49gnvvakUopFw0IsG8ecYXUHiISRBo0Q0l7',
        },
        body: jsonEncode(animal.toJson()),
      );
      if (response.statusCode == 200) {
        getAnimals();
      } else {
        throw Exception('Failed to POST animal');
      }
    } catch (e, s) {
      emit(state.copyWith(isLoading: false, hasError: true));
      print(e);
      print(s);
    }
  }

  void deleteAnimal(Animal animal) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    try {
      final response = await http.delete(
        Uri.parse('https://parseapi.back4app.com/classes/animals/${animal.id}'),
        headers: {
          'X-Parse-Application-Id': 'p1AemwNgwSNLSpkgM2GpidfaZlI2msXSQF2anciZ',
          'X-Parse-REST-API-Key': 'IHzNH49gnvvakUopFw0IsG8ecYXUHiISRBo0Q0l7',
        },
      );
      if (response.statusCode == 200) {
        getAnimals();
      } else {
        throw Exception('Failed to POST animal');
      }
    } catch (e, s) {
      emit(state.copyWith(isLoading: false, hasError: true));
      print(e);
      print(s);
    }
  }
}
