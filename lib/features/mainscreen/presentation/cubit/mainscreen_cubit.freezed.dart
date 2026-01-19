// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mainscreen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainScreenState {

 bool get permissionGranted; MainNavigationEnum get selectedNavItem;
/// Create a copy of MainScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainScreenStateCopyWith<MainScreenState> get copyWith => _$MainScreenStateCopyWithImpl<MainScreenState>(this as MainScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainScreenState&&(identical(other.permissionGranted, permissionGranted) || other.permissionGranted == permissionGranted)&&(identical(other.selectedNavItem, selectedNavItem) || other.selectedNavItem == selectedNavItem));
}


@override
int get hashCode => Object.hash(runtimeType,permissionGranted,selectedNavItem);

@override
String toString() {
  return 'MainScreenState(permissionGranted: $permissionGranted, selectedNavItem: $selectedNavItem)';
}


}

/// @nodoc
abstract mixin class $MainScreenStateCopyWith<$Res>  {
  factory $MainScreenStateCopyWith(MainScreenState value, $Res Function(MainScreenState) _then) = _$MainScreenStateCopyWithImpl;
@useResult
$Res call({
 bool permissionGranted, MainNavigationEnum selectedNavItem
});




}
/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._self, this._then);

  final MainScreenState _self;
  final $Res Function(MainScreenState) _then;

/// Create a copy of MainScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permissionGranted = null,Object? selectedNavItem = null,}) {
  return _then(_self.copyWith(
permissionGranted: null == permissionGranted ? _self.permissionGranted : permissionGranted // ignore: cast_nullable_to_non_nullable
as bool,selectedNavItem: null == selectedNavItem ? _self.selectedNavItem : selectedNavItem // ignore: cast_nullable_to_non_nullable
as MainNavigationEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [MainScreenState].
extension MainScreenStatePatterns on MainScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainScreenState value)  $default,){
final _that = this;
switch (_that) {
case _MainScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _MainScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool permissionGranted,  MainNavigationEnum selectedNavItem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainScreenState() when $default != null:
return $default(_that.permissionGranted,_that.selectedNavItem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool permissionGranted,  MainNavigationEnum selectedNavItem)  $default,) {final _that = this;
switch (_that) {
case _MainScreenState():
return $default(_that.permissionGranted,_that.selectedNavItem);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool permissionGranted,  MainNavigationEnum selectedNavItem)?  $default,) {final _that = this;
switch (_that) {
case _MainScreenState() when $default != null:
return $default(_that.permissionGranted,_that.selectedNavItem);case _:
  return null;

}
}

}

/// @nodoc


class _MainScreenState implements MainScreenState {
  const _MainScreenState({this.permissionGranted = true, this.selectedNavItem = MainNavigationEnum.reminder});
  

@override@JsonKey() final  bool permissionGranted;
@override@JsonKey() final  MainNavigationEnum selectedNavItem;

/// Create a copy of MainScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainScreenStateCopyWith<_MainScreenState> get copyWith => __$MainScreenStateCopyWithImpl<_MainScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainScreenState&&(identical(other.permissionGranted, permissionGranted) || other.permissionGranted == permissionGranted)&&(identical(other.selectedNavItem, selectedNavItem) || other.selectedNavItem == selectedNavItem));
}


@override
int get hashCode => Object.hash(runtimeType,permissionGranted,selectedNavItem);

@override
String toString() {
  return 'MainScreenState(permissionGranted: $permissionGranted, selectedNavItem: $selectedNavItem)';
}


}

/// @nodoc
abstract mixin class _$MainScreenStateCopyWith<$Res> implements $MainScreenStateCopyWith<$Res> {
  factory _$MainScreenStateCopyWith(_MainScreenState value, $Res Function(_MainScreenState) _then) = __$MainScreenStateCopyWithImpl;
@override @useResult
$Res call({
 bool permissionGranted, MainNavigationEnum selectedNavItem
});




}
/// @nodoc
class __$MainScreenStateCopyWithImpl<$Res>
    implements _$MainScreenStateCopyWith<$Res> {
  __$MainScreenStateCopyWithImpl(this._self, this._then);

  final _MainScreenState _self;
  final $Res Function(_MainScreenState) _then;

/// Create a copy of MainScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permissionGranted = null,Object? selectedNavItem = null,}) {
  return _then(_MainScreenState(
permissionGranted: null == permissionGranted ? _self.permissionGranted : permissionGranted // ignore: cast_nullable_to_non_nullable
as bool,selectedNavItem: null == selectedNavItem ? _self.selectedNavItem : selectedNavItem // ignore: cast_nullable_to_non_nullable
as MainNavigationEnum,
  ));
}


}

// dart format on
