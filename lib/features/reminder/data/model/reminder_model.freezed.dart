// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReminderModel {

 int? get id; String? get title; String? get note; int? get dateTimeEpoch; int? get isRepeatEveryDay; String? get reminderType; String? get imagePath;
/// Create a copy of ReminderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReminderModelCopyWith<ReminderModel> get copyWith => _$ReminderModelCopyWithImpl<ReminderModel>(this as ReminderModel, _$identity);

  /// Serializes this ReminderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.dateTimeEpoch, dateTimeEpoch) || other.dateTimeEpoch == dateTimeEpoch)&&(identical(other.isRepeatEveryDay, isRepeatEveryDay) || other.isRepeatEveryDay == isRepeatEveryDay)&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,note,dateTimeEpoch,isRepeatEveryDay,reminderType,imagePath);

@override
String toString() {
  return 'ReminderModel(id: $id, title: $title, note: $note, dateTimeEpoch: $dateTimeEpoch, isRepeatEveryDay: $isRepeatEveryDay, reminderType: $reminderType, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class $ReminderModelCopyWith<$Res>  {
  factory $ReminderModelCopyWith(ReminderModel value, $Res Function(ReminderModel) _then) = _$ReminderModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? title, String? note, int? dateTimeEpoch, int? isRepeatEveryDay, String? reminderType, String? imagePath
});




}
/// @nodoc
class _$ReminderModelCopyWithImpl<$Res>
    implements $ReminderModelCopyWith<$Res> {
  _$ReminderModelCopyWithImpl(this._self, this._then);

  final ReminderModel _self;
  final $Res Function(ReminderModel) _then;

/// Create a copy of ReminderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? note = freezed,Object? dateTimeEpoch = freezed,Object? isRepeatEveryDay = freezed,Object? reminderType = freezed,Object? imagePath = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,dateTimeEpoch: freezed == dateTimeEpoch ? _self.dateTimeEpoch : dateTimeEpoch // ignore: cast_nullable_to_non_nullable
as int?,isRepeatEveryDay: freezed == isRepeatEveryDay ? _self.isRepeatEveryDay : isRepeatEveryDay // ignore: cast_nullable_to_non_nullable
as int?,reminderType: freezed == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReminderModel].
extension ReminderModelPatterns on ReminderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReminderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReminderModel value)  $default,){
final _that = this;
switch (_that) {
case _ReminderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReminderModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReminderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? title,  String? note,  int? dateTimeEpoch,  int? isRepeatEveryDay,  String? reminderType,  String? imagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderModel() when $default != null:
return $default(_that.id,_that.title,_that.note,_that.dateTimeEpoch,_that.isRepeatEveryDay,_that.reminderType,_that.imagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? title,  String? note,  int? dateTimeEpoch,  int? isRepeatEveryDay,  String? reminderType,  String? imagePath)  $default,) {final _that = this;
switch (_that) {
case _ReminderModel():
return $default(_that.id,_that.title,_that.note,_that.dateTimeEpoch,_that.isRepeatEveryDay,_that.reminderType,_that.imagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? title,  String? note,  int? dateTimeEpoch,  int? isRepeatEveryDay,  String? reminderType,  String? imagePath)?  $default,) {final _that = this;
switch (_that) {
case _ReminderModel() when $default != null:
return $default(_that.id,_that.title,_that.note,_that.dateTimeEpoch,_that.isRepeatEveryDay,_that.reminderType,_that.imagePath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReminderModel extends ReminderModel {
  const _ReminderModel({this.id, this.title, this.note, this.dateTimeEpoch, this.isRepeatEveryDay, this.reminderType, this.imagePath}): super._();
  factory _ReminderModel.fromJson(Map<String, dynamic> json) => _$ReminderModelFromJson(json);

@override final  int? id;
@override final  String? title;
@override final  String? note;
@override final  int? dateTimeEpoch;
@override final  int? isRepeatEveryDay;
@override final  String? reminderType;
@override final  String? imagePath;

/// Create a copy of ReminderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderModelCopyWith<_ReminderModel> get copyWith => __$ReminderModelCopyWithImpl<_ReminderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReminderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.dateTimeEpoch, dateTimeEpoch) || other.dateTimeEpoch == dateTimeEpoch)&&(identical(other.isRepeatEveryDay, isRepeatEveryDay) || other.isRepeatEveryDay == isRepeatEveryDay)&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,note,dateTimeEpoch,isRepeatEveryDay,reminderType,imagePath);

@override
String toString() {
  return 'ReminderModel(id: $id, title: $title, note: $note, dateTimeEpoch: $dateTimeEpoch, isRepeatEveryDay: $isRepeatEveryDay, reminderType: $reminderType, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$ReminderModelCopyWith<$Res> implements $ReminderModelCopyWith<$Res> {
  factory _$ReminderModelCopyWith(_ReminderModel value, $Res Function(_ReminderModel) _then) = __$ReminderModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? title, String? note, int? dateTimeEpoch, int? isRepeatEveryDay, String? reminderType, String? imagePath
});




}
/// @nodoc
class __$ReminderModelCopyWithImpl<$Res>
    implements _$ReminderModelCopyWith<$Res> {
  __$ReminderModelCopyWithImpl(this._self, this._then);

  final _ReminderModel _self;
  final $Res Function(_ReminderModel) _then;

/// Create a copy of ReminderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? note = freezed,Object? dateTimeEpoch = freezed,Object? isRepeatEveryDay = freezed,Object? reminderType = freezed,Object? imagePath = freezed,}) {
  return _then(_ReminderModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,dateTimeEpoch: freezed == dateTimeEpoch ? _self.dateTimeEpoch : dateTimeEpoch // ignore: cast_nullable_to_non_nullable
as int?,isRepeatEveryDay: freezed == isRepeatEveryDay ? _self.isRepeatEveryDay : isRepeatEveryDay // ignore: cast_nullable_to_non_nullable
as int?,reminderType: freezed == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
