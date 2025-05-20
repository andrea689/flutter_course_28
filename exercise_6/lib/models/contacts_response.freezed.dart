// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactsResponse {

 List<Contact> get results;
/// Create a copy of ContactsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactsResponseCopyWith<ContactsResponse> get copyWith => _$ContactsResponseCopyWithImpl<ContactsResponse>(this as ContactsResponse, _$identity);

  /// Serializes this ContactsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactsResponse&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ContactsResponse(results: $results)';
}


}

/// @nodoc
abstract mixin class $ContactsResponseCopyWith<$Res>  {
  factory $ContactsResponseCopyWith(ContactsResponse value, $Res Function(ContactsResponse) _then) = _$ContactsResponseCopyWithImpl;
@useResult
$Res call({
 List<Contact> results
});




}
/// @nodoc
class _$ContactsResponseCopyWithImpl<$Res>
    implements $ContactsResponseCopyWith<$Res> {
  _$ContactsResponseCopyWithImpl(this._self, this._then);

  final ContactsResponse _self;
  final $Res Function(ContactsResponse) _then;

/// Create a copy of ContactsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Contact>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ContactsResponse extends ContactsResponse {
  const _ContactsResponse({required final  List<Contact> results}): _results = results,super._();
  factory _ContactsResponse.fromJson(Map<String, dynamic> json) => _$ContactsResponseFromJson(json);

 final  List<Contact> _results;
@override List<Contact> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ContactsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactsResponseCopyWith<_ContactsResponse> get copyWith => __$ContactsResponseCopyWithImpl<_ContactsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactsResponse&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ContactsResponse(results: $results)';
}


}

/// @nodoc
abstract mixin class _$ContactsResponseCopyWith<$Res> implements $ContactsResponseCopyWith<$Res> {
  factory _$ContactsResponseCopyWith(_ContactsResponse value, $Res Function(_ContactsResponse) _then) = __$ContactsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Contact> results
});




}
/// @nodoc
class __$ContactsResponseCopyWithImpl<$Res>
    implements _$ContactsResponseCopyWith<$Res> {
  __$ContactsResponseCopyWithImpl(this._self, this._then);

  final _ContactsResponse _self;
  final $Res Function(_ContactsResponse) _then;

/// Create a copy of ContactsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_ContactsResponse(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Contact>,
  ));
}


}

// dart format on
