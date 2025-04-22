import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lesson_4/models/playlist.dart';

part 'counter_state.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int counter1,
    @Default(10) int counter2,
    @Default(0) int counter3,
    @Default(0) int counter4,
    @Default(false) bool isLoading,
    @Default([]) List<Playlist> playlists,
  }) = _CounterState;
}
