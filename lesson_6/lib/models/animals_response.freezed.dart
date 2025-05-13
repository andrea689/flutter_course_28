// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animals_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnimalsResponse {

 List<Animal> get results;
/// Create a copy of AnimalsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimalsResponseCopyWith<AnimalsResponse> get copyWith => _$AnimalsResponseCopyWithImpl<AnimalsResponse>(this as AnimalsResponse, _$identity);

  /// Serializes this AnimalsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimalsResponse&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'AnimalsResponse(results: $results)';
}


}

/// @nodoc
abstract mixin class $AnimalsResponseCopyWith<$Res>  {
  factory $AnimalsResponseCopyWith(AnimalsResponse value, $Res Function(AnimalsResponse) _then) = _$AnimalsResponseCopyWithImpl;
@useResult
$Res call({
 List<Animal> results
});




}
/// @nodoc
class _$AnimalsResponseCopyWithImpl<$Res>
    implements $AnimalsResponseCopyWith<$Res> {
  _$AnimalsResponseCopyWithImpl(this._self, this._then);

  final AnimalsResponse _self;
  final $Res Function(AnimalsResponse) _then;

/// Create a copy of AnimalsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Animal>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AnimalsResponse extends AnimalsResponse {
  const _AnimalsResponse({required final  List<Animal> results}): _results = results,super._();
  factory _AnimalsResponse.fromJson(Map<String, dynamic> json) => _$AnimalsResponseFromJson(json);

 final  List<Animal> _results;
@override List<Animal> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of AnimalsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimalsResponseCopyWith<_AnimalsResponse> get copyWith => __$AnimalsResponseCopyWithImpl<_AnimalsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnimalsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimalsResponse&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'AnimalsResponse(results: $results)';
}


}

/// @nodoc
abstract mixin class _$AnimalsResponseCopyWith<$Res> implements $AnimalsResponseCopyWith<$Res> {
  factory _$AnimalsResponseCopyWith(_AnimalsResponse value, $Res Function(_AnimalsResponse) _then) = __$AnimalsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Animal> results
});




}
/// @nodoc
class __$AnimalsResponseCopyWithImpl<$Res>
    implements _$AnimalsResponseCopyWith<$Res> {
  __$AnimalsResponseCopyWithImpl(this._self, this._then);

  final _AnimalsResponse _self;
  final $Res Function(_AnimalsResponse) _then;

/// Create a copy of AnimalsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_AnimalsResponse(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Animal>,
  ));
}


}

// dart format on
