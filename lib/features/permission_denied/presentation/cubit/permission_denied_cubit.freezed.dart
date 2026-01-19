// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_denied_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionDeniedState {

 bool? get permissionGranted;
/// Create a copy of PermissionDeniedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionDeniedStateCopyWith<PermissionDeniedState> get copyWith => _$PermissionDeniedStateCopyWithImpl<PermissionDeniedState>(this as PermissionDeniedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionDeniedState&&(identical(other.permissionGranted, permissionGranted) || other.permissionGranted == permissionGranted));
}


@override
int get hashCode => Object.hash(runtimeType,permissionGranted);

@override
String toString() {
  return 'PermissionDeniedState(permissionGranted: $permissionGranted)';
}


}

/// @nodoc
abstract mixin class $PermissionDeniedStateCopyWith<$Res>  {
  factory $PermissionDeniedStateCopyWith(PermissionDeniedState value, $Res Function(PermissionDeniedState) _then) = _$PermissionDeniedStateCopyWithImpl;
@useResult
$Res call({
 bool? permissionGranted
});




}
/// @nodoc
class _$PermissionDeniedStateCopyWithImpl<$Res>
    implements $PermissionDeniedStateCopyWith<$Res> {
  _$PermissionDeniedStateCopyWithImpl(this._self, this._then);

  final PermissionDeniedState _self;
  final $Res Function(PermissionDeniedState) _then;

/// Create a copy of PermissionDeniedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permissionGranted = freezed,}) {
  return _then(_self.copyWith(
permissionGranted: freezed == permissionGranted ? _self.permissionGranted : permissionGranted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PermissionDeniedState].
extension PermissionDeniedStatePatterns on PermissionDeniedState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionDeniedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionDeniedState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionDeniedState value)  $default,){
final _that = this;
switch (_that) {
case _PermissionDeniedState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionDeniedState value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionDeniedState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? permissionGranted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionDeniedState() when $default != null:
return $default(_that.permissionGranted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? permissionGranted)  $default,) {final _that = this;
switch (_that) {
case _PermissionDeniedState():
return $default(_that.permissionGranted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? permissionGranted)?  $default,) {final _that = this;
switch (_that) {
case _PermissionDeniedState() when $default != null:
return $default(_that.permissionGranted);case _:
  return null;

}
}

}

/// @nodoc


class _PermissionDeniedState implements PermissionDeniedState {
  const _PermissionDeniedState({this.permissionGranted});
  

@override final  bool? permissionGranted;

/// Create a copy of PermissionDeniedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionDeniedStateCopyWith<_PermissionDeniedState> get copyWith => __$PermissionDeniedStateCopyWithImpl<_PermissionDeniedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionDeniedState&&(identical(other.permissionGranted, permissionGranted) || other.permissionGranted == permissionGranted));
}


@override
int get hashCode => Object.hash(runtimeType,permissionGranted);

@override
String toString() {
  return 'PermissionDeniedState(permissionGranted: $permissionGranted)';
}


}

/// @nodoc
abstract mixin class _$PermissionDeniedStateCopyWith<$Res> implements $PermissionDeniedStateCopyWith<$Res> {
  factory _$PermissionDeniedStateCopyWith(_PermissionDeniedState value, $Res Function(_PermissionDeniedState) _then) = __$PermissionDeniedStateCopyWithImpl;
@override @useResult
$Res call({
 bool? permissionGranted
});




}
/// @nodoc
class __$PermissionDeniedStateCopyWithImpl<$Res>
    implements _$PermissionDeniedStateCopyWith<$Res> {
  __$PermissionDeniedStateCopyWithImpl(this._self, this._then);

  final _PermissionDeniedState _self;
  final $Res Function(_PermissionDeniedState) _then;

/// Create a copy of PermissionDeniedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permissionGranted = freezed,}) {
  return _then(_PermissionDeniedState(
permissionGranted: freezed == permissionGranted ? _self.permissionGranted : permissionGranted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
