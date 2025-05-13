// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animals_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnimalsState {

 List<Animal> get animals; bool get isLoading; bool get hasError;
/// Create a copy of AnimalsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimalsStateCopyWith<AnimalsState> get copyWith => _$AnimalsStateCopyWithImpl<AnimalsState>(this as AnimalsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimalsState&&const DeepCollectionEquality().equals(other.animals, animals)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasError, hasError) || other.hasError == hasError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(animals),isLoading,hasError);

@override
String toString() {
  return 'AnimalsState(animals: $animals, isLoading: $isLoading, hasError: $hasError)';
}


}

/// @nodoc
abstract mixin class $AnimalsStateCopyWith<$Res>  {
  factory $AnimalsStateCopyWith(AnimalsState value, $Res Function(AnimalsState) _then) = _$AnimalsStateCopyWithImpl;
@useResult
$Res call({
 List<Animal> animals, bool isLoading, bool hasError
});




}
/// @nodoc
class _$AnimalsStateCopyWithImpl<$Res>
    implements $AnimalsStateCopyWith<$Res> {
  _$AnimalsStateCopyWithImpl(this._self, this._then);

  final AnimalsState _self;
  final $Res Function(AnimalsState) _then;

/// Create a copy of AnimalsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? animals = null,Object? isLoading = null,Object? hasError = null,}) {
  return _then(_self.copyWith(
animals: null == animals ? _self.animals : animals // ignore: cast_nullable_to_non_nullable
as List<Animal>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _AnimalsState extends AnimalsState {
  const _AnimalsState({final  List<Animal> animals = const [], this.isLoading = false, this.hasError = false}): _animals = animals,super._();
  

 final  List<Animal> _animals;
@override@JsonKey() List<Animal> get animals {
  if (_animals is EqualUnmodifiableListView) return _animals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_animals);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool hasError;

/// Create a copy of AnimalsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimalsStateCopyWith<_AnimalsState> get copyWith => __$AnimalsStateCopyWithImpl<_AnimalsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimalsState&&const DeepCollectionEquality().equals(other._animals, _animals)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasError, hasError) || other.hasError == hasError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_animals),isLoading,hasError);

@override
String toString() {
  return 'AnimalsState(animals: $animals, isLoading: $isLoading, hasError: $hasError)';
}


}

/// @nodoc
abstract mixin class _$AnimalsStateCopyWith<$Res> implements $AnimalsStateCopyWith<$Res> {
  factory _$AnimalsStateCopyWith(_AnimalsState value, $Res Function(_AnimalsState) _then) = __$AnimalsStateCopyWithImpl;
@override @useResult
$Res call({
 List<Animal> animals, bool isLoading, bool hasError
});




}
/// @nodoc
class __$AnimalsStateCopyWithImpl<$Res>
    implements _$AnimalsStateCopyWith<$Res> {
  __$AnimalsStateCopyWithImpl(this._self, this._then);

  final _AnimalsState _self;
  final $Res Function(_AnimalsState) _then;

/// Create a copy of AnimalsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? animals = null,Object? isLoading = null,Object? hasError = null,}) {
  return _then(_AnimalsState(
animals: null == animals ? _self._animals : animals // ignore: cast_nullable_to_non_nullable
as List<Animal>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
