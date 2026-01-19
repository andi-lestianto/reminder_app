// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReminderEntity {

 int get id; String get title; String? get note; DateTime get dateTime; ReminderTypeEnum get reminderType; String? get imagePath;
/// Create a copy of ReminderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReminderEntityCopyWith<ReminderEntity> get copyWith => _$ReminderEntityCopyWithImpl<ReminderEntity>(this as ReminderEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,note,dateTime,reminderType,imagePath);

@override
String toString() {
  return 'ReminderEntity(id: $id, title: $title, note: $note, dateTime: $dateTime, reminderType: $reminderType, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class $ReminderEntityCopyWith<$Res>  {
  factory $ReminderEntityCopyWith(ReminderEntity value, $Res Function(ReminderEntity) _then) = _$ReminderEntityCopyWithImpl;
@useResult
$Res call({
 int id, String title, String? note, DateTime dateTime, ReminderTypeEnum reminderType, String? imagePath
});




}
/// @nodoc
class _$ReminderEntityCopyWithImpl<$Res>
    implements $ReminderEntityCopyWith<$Res> {
  _$ReminderEntityCopyWithImpl(this._self, this._then);

  final ReminderEntity _self;
  final $Res Function(ReminderEntity) _then;

/// Create a copy of ReminderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? note = freezed,Object? dateTime = null,Object? reminderType = null,Object? imagePath = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,reminderType: null == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as ReminderTypeEnum,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReminderEntity].
extension ReminderEntityPatterns on ReminderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReminderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReminderEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReminderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReminderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReminderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String? note,  DateTime dateTime,  ReminderTypeEnum reminderType,  String? imagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderEntity() when $default != null:
return $default(_that.id,_that.title,_that.note,_that.dateTime,_that.reminderType,_that.imagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String? note,  DateTime dateTime,  ReminderTypeEnum reminderType,  String? imagePath)  $default,) {final _that = this;
switch (_that) {
case _ReminderEntity():
return $default(_that.id,_that.title,_that.note,_that.dateTime,_that.reminderType,_that.imagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String? note,  DateTime dateTime,  ReminderTypeEnum reminderType,  String? imagePath)?  $default,) {final _that = this;
switch (_that) {
case _ReminderEntity() when $default != null:
return $default(_that.id,_that.title,_that.note,_that.dateTime,_that.reminderType,_that.imagePath);case _:
  return null;

}
}

}

/// @nodoc


class _ReminderEntity extends ReminderEntity {
  const _ReminderEntity({required this.id, required this.title, this.note, required this.dateTime, required this.reminderType, this.imagePath}): super._();
  

@override final  int id;
@override final  String title;
@override final  String? note;
@override final  DateTime dateTime;
@override final  ReminderTypeEnum reminderType;
@override final  String? imagePath;

/// Create a copy of ReminderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderEntityCopyWith<_ReminderEntity> get copyWith => __$ReminderEntityCopyWithImpl<_ReminderEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,note,dateTime,reminderType,imagePath);

@override
String toString() {
  return 'ReminderEntity(id: $id, title: $title, note: $note, dateTime: $dateTime, reminderType: $reminderType, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$ReminderEntityCopyWith<$Res> implements $ReminderEntityCopyWith<$Res> {
  factory _$ReminderEntityCopyWith(_ReminderEntity value, $Res Function(_ReminderEntity) _then) = __$ReminderEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? note, DateTime dateTime, ReminderTypeEnum reminderType, String? imagePath
});




}
/// @nodoc
class __$ReminderEntityCopyWithImpl<$Res>
    implements _$ReminderEntityCopyWith<$Res> {
  __$ReminderEntityCopyWithImpl(this._self, this._then);

  final _ReminderEntity _self;
  final $Res Function(_ReminderEntity) _then;

/// Create a copy of ReminderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? note = freezed,Object? dateTime = null,Object? reminderType = null,Object? imagePath = freezed,}) {
  return _then(_ReminderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,reminderType: null == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as ReminderTypeEnum,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
