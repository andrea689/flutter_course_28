// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CounterState {

 int get counter1; int get counter2; int get counter3; int get counter4; bool get isLoading; List<Playlist> get playlists;
/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CounterStateCopyWith<CounterState> get copyWith => _$CounterStateCopyWithImpl<CounterState>(this as CounterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterState&&(identical(other.counter1, counter1) || other.counter1 == counter1)&&(identical(other.counter2, counter2) || other.counter2 == counter2)&&(identical(other.counter3, counter3) || other.counter3 == counter3)&&(identical(other.counter4, counter4) || other.counter4 == counter4)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.playlists, playlists));
}


@override
int get hashCode => Object.hash(runtimeType,counter1,counter2,counter3,counter4,isLoading,const DeepCollectionEquality().hash(playlists));

@override
String toString() {
  return 'CounterState(counter1: $counter1, counter2: $counter2, counter3: $counter3, counter4: $counter4, isLoading: $isLoading, playlists: $playlists)';
}


}

/// @nodoc
abstract mixin class $CounterStateCopyWith<$Res>  {
  factory $CounterStateCopyWith(CounterState value, $Res Function(CounterState) _then) = _$CounterStateCopyWithImpl;
@useResult
$Res call({
 int counter1, int counter2, int counter3, int counter4, bool isLoading, List<Playlist> playlists
});




}
/// @nodoc
class _$CounterStateCopyWithImpl<$Res>
    implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._self, this._then);

  final CounterState _self;
  final $Res Function(CounterState) _then;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? counter1 = null,Object? counter2 = null,Object? counter3 = null,Object? counter4 = null,Object? isLoading = null,Object? playlists = null,}) {
  return _then(_self.copyWith(
counter1: null == counter1 ? _self.counter1 : counter1 // ignore: cast_nullable_to_non_nullable
as int,counter2: null == counter2 ? _self.counter2 : counter2 // ignore: cast_nullable_to_non_nullable
as int,counter3: null == counter3 ? _self.counter3 : counter3 // ignore: cast_nullable_to_non_nullable
as int,counter4: null == counter4 ? _self.counter4 : counter4 // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,playlists: null == playlists ? _self.playlists : playlists // ignore: cast_nullable_to_non_nullable
as List<Playlist>,
  ));
}

}


/// @nodoc


class _CounterState implements CounterState {
  const _CounterState({this.counter1 = 0, this.counter2 = 10, this.counter3 = 0, this.counter4 = 0, this.isLoading = false, final  List<Playlist> playlists = const []}): _playlists = playlists;
  

@override@JsonKey() final  int counter1;
@override@JsonKey() final  int counter2;
@override@JsonKey() final  int counter3;
@override@JsonKey() final  int counter4;
@override@JsonKey() final  bool isLoading;
 final  List<Playlist> _playlists;
@override@JsonKey() List<Playlist> get playlists {
  if (_playlists is EqualUnmodifiableListView) return _playlists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playlists);
}


/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CounterStateCopyWith<_CounterState> get copyWith => __$CounterStateCopyWithImpl<_CounterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterState&&(identical(other.counter1, counter1) || other.counter1 == counter1)&&(identical(other.counter2, counter2) || other.counter2 == counter2)&&(identical(other.counter3, counter3) || other.counter3 == counter3)&&(identical(other.counter4, counter4) || other.counter4 == counter4)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._playlists, _playlists));
}


@override
int get hashCode => Object.hash(runtimeType,counter1,counter2,counter3,counter4,isLoading,const DeepCollectionEquality().hash(_playlists));

@override
String toString() {
  return 'CounterState(counter1: $counter1, counter2: $counter2, counter3: $counter3, counter4: $counter4, isLoading: $isLoading, playlists: $playlists)';
}


}

/// @nodoc
abstract mixin class _$CounterStateCopyWith<$Res> implements $CounterStateCopyWith<$Res> {
  factory _$CounterStateCopyWith(_CounterState value, $Res Function(_CounterState) _then) = __$CounterStateCopyWithImpl;
@override @useResult
$Res call({
 int counter1, int counter2, int counter3, int counter4, bool isLoading, List<Playlist> playlists
});




}
/// @nodoc
class __$CounterStateCopyWithImpl<$Res>
    implements _$CounterStateCopyWith<$Res> {
  __$CounterStateCopyWithImpl(this._self, this._then);

  final _CounterState _self;
  final $Res Function(_CounterState) _then;

/// Create a copy of CounterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? counter1 = null,Object? counter2 = null,Object? counter3 = null,Object? counter4 = null,Object? isLoading = null,Object? playlists = null,}) {
  return _then(_CounterState(
counter1: null == counter1 ? _self.counter1 : counter1 // ignore: cast_nullable_to_non_nullable
as int,counter2: null == counter2 ? _self.counter2 : counter2 // ignore: cast_nullable_to_non_nullable
as int,counter3: null == counter3 ? _self.counter3 : counter3 // ignore: cast_nullable_to_non_nullable
as int,counter4: null == counter4 ? _self.counter4 : counter4 // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,playlists: null == playlists ? _self._playlists : playlists // ignore: cast_nullable_to_non_nullable
as List<Playlist>,
  ));
}


}

// dart format on
