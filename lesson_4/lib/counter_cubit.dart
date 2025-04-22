import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_4/counter_state.dart';
import 'package:lesson_4/models/playlist.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState());

  void incrementCounter1() =>
      emit(state.copyWith(counter1: state.counter1 + 1));

  void incrementCounter2() =>
      emit(state.copyWith(counter2: state.counter2 + 1));

  void getPlaylists() async {
    emit(state.copyWith(isLoading: true));
    // Simulazione chiamata al BE di 1 secondo
    await Future.delayed(const Duration(seconds: 1));

    const playlists = [
      Playlist(
        id: 1,
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO1ahqM0-default.jpg',
        label: 'This is Usher. The essential traks, all in one playlist',
      ),
      Playlist(
        id: 2,
        imageUrl:
            'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO1aBeik-default.jpg',
        label: 'This is Post Malone. The essential traks, all in one playlist',
      ),
      Playlist(
        id: 3,
        imageUrl:
            'https://i.scdn.co/image/ab67706f00000002cd8e2b103295bbd2749d8ea7',
        label:
            'This is Ariana Grande. The essential traks, all in one playlist',
      ),
    ];

    emit(state.copyWith(isLoading: false, playlists: playlists));
  }

  void deletePlaylist(int playlistId) {
    final newPlaylists = List<Playlist>.from(state.playlists);
    newPlaylists.removeWhere((playlist) => playlist.id == playlistId);
    emit(state.copyWith(playlists: newPlaylists));
  }
}
