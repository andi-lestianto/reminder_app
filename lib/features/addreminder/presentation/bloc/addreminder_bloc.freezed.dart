// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addreminder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddReminderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReminderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddReminderEvent()';
}


}

/// @nodoc
class $AddReminderEventCopyWith<$Res>  {
$AddReminderEventCopyWith(AddReminderEvent _, $Res Function(AddReminderEvent) __);
}


/// Adds pattern-matching-related methods to [AddReminderEvent].
extension AddReminderEventPatterns on AddReminderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _FillForm value)?  fillForm,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _FillForm() when fillForm != null:
return fillForm(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _FillForm value)  fillForm,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _FillForm():
return fillForm(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _FillForm value)?  fillForm,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _FillForm() when fillForm != null:
return fillForm(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ReminderEntity? reminder)?  fillForm,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _FillForm() when fillForm != null:
return fillForm(_that.reminder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ReminderEntity? reminder)  fillForm,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _FillForm():
return fillForm(_that.reminder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ReminderEntity? reminder)?  fillForm,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _FillForm() when fillForm != null:
return fillForm(_that.reminder);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AddReminderEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddReminderEvent.started()';
}


}




/// @nodoc


class _FillForm implements AddReminderEvent {
  const _FillForm({required this.reminder});
  

 final  ReminderEntity? reminder;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FillFormCopyWith<_FillForm> get copyWith => __$FillFormCopyWithImpl<_FillForm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FillForm&&(identical(other.reminder, reminder) || other.reminder == reminder));
}


@override
int get hashCode => Object.hash(runtimeType,reminder);

@override
String toString() {
  return 'AddReminderEvent.fillForm(reminder: $reminder)';
}


}

/// @nodoc
abstract mixin class _$FillFormCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$FillFormCopyWith(_FillForm value, $Res Function(_FillForm) _then) = __$FillFormCopyWithImpl;
@useResult
$Res call({
 ReminderEntity? reminder
});


$ReminderEntityCopyWith<$Res>? get reminder;

}
/// @nodoc
class __$FillFormCopyWithImpl<$Res>
    implements _$FillFormCopyWith<$Res> {
  __$FillFormCopyWithImpl(this._self, this._then);

  final _FillForm _self;
  final $Res Function(_FillForm) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reminder = freezed,}) {
  return _then(_FillForm(
reminder: freezed == reminder ? _self.reminder : reminder // ignore: cast_nullable_to_non_nullable
as ReminderEntity?,
  ));
}

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReminderEntityCopyWith<$Res>? get reminder {
    if (_self.reminder == null) {
    return null;
  }

  return $ReminderEntityCopyWith<$Res>(_self.reminder!, (value) {
    return _then(_self.copyWith(reminder: value));
  });
}
}

/// @nodoc
mixin _$AddReminderState {

 String get title; String? get note; String? get imagePath; bool get isRepeatEveryDay; ReminderTypeEnum get reminderType;
/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddReminderStateCopyWith<AddReminderState> get copyWith => _$AddReminderStateCopyWithImpl<AddReminderState>(this as AddReminderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReminderState&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isRepeatEveryDay, isRepeatEveryDay) || other.isRepeatEveryDay == isRepeatEveryDay)&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType));
}


@override
int get hashCode => Object.hash(runtimeType,title,note,imagePath,isRepeatEveryDay,reminderType);

@override
String toString() {
  return 'AddReminderState(title: $title, note: $note, imagePath: $imagePath, isRepeatEveryDay: $isRepeatEveryDay, reminderType: $reminderType)';
}


}

/// @nodoc
abstract mixin class $AddReminderStateCopyWith<$Res>  {
  factory $AddReminderStateCopyWith(AddReminderState value, $Res Function(AddReminderState) _then) = _$AddReminderStateCopyWithImpl;
@useResult
$Res call({
 String title, String? note, String? imagePath, bool isRepeatEveryDay, ReminderTypeEnum reminderType
});




}
/// @nodoc
class _$AddReminderStateCopyWithImpl<$Res>
    implements $AddReminderStateCopyWith<$Res> {
  _$AddReminderStateCopyWithImpl(this._self, this._then);

  final AddReminderState _self;
  final $Res Function(AddReminderState) _then;

/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? note = freezed,Object? imagePath = freezed,Object? isRepeatEveryDay = null,Object? reminderType = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isRepeatEveryDay: null == isRepeatEveryDay ? _self.isRepeatEveryDay : isRepeatEveryDay // ignore: cast_nullable_to_non_nullable
as bool,reminderType: null == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as ReminderTypeEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [AddReminderState].
extension AddReminderStatePatterns on AddReminderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddReminderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddReminderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddReminderState value)  $default,){
final _that = this;
switch (_that) {
case _AddReminderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddReminderState value)?  $default,){
final _that = this;
switch (_that) {
case _AddReminderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddReminderState() when $default != null:
return $default(_that.title,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType)  $default,) {final _that = this;
switch (_that) {
case _AddReminderState():
return $default(_that.title,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType)?  $default,) {final _that = this;
switch (_that) {
case _AddReminderState() when $default != null:
return $default(_that.title,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType);case _:
  return null;

}
}

}

/// @nodoc


class _AddReminderState implements AddReminderState {
  const _AddReminderState({required this.title, this.note = '', this.imagePath = '', this.isRepeatEveryDay = false, required this.reminderType});
  

@override final  String title;
@override@JsonKey() final  String? note;
@override@JsonKey() final  String? imagePath;
@override@JsonKey() final  bool isRepeatEveryDay;
@override final  ReminderTypeEnum reminderType;

/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddReminderStateCopyWith<_AddReminderState> get copyWith => __$AddReminderStateCopyWithImpl<_AddReminderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddReminderState&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isRepeatEveryDay, isRepeatEveryDay) || other.isRepeatEveryDay == isRepeatEveryDay)&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType));
}


@override
int get hashCode => Object.hash(runtimeType,title,note,imagePath,isRepeatEveryDay,reminderType);

@override
String toString() {
  return 'AddReminderState(title: $title, note: $note, imagePath: $imagePath, isRepeatEveryDay: $isRepeatEveryDay, reminderType: $reminderType)';
}


}

/// @nodoc
abstract mixin class _$AddReminderStateCopyWith<$Res> implements $AddReminderStateCopyWith<$Res> {
  factory _$AddReminderStateCopyWith(_AddReminderState value, $Res Function(_AddReminderState) _then) = __$AddReminderStateCopyWithImpl;
@override @useResult
$Res call({
 String title, String? note, String? imagePath, bool isRepeatEveryDay, ReminderTypeEnum reminderType
});




}
/// @nodoc
class __$AddReminderStateCopyWithImpl<$Res>
    implements _$AddReminderStateCopyWith<$Res> {
  __$AddReminderStateCopyWithImpl(this._self, this._then);

  final _AddReminderState _self;
  final $Res Function(_AddReminderState) _then;

/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? note = freezed,Object? imagePath = freezed,Object? isRepeatEveryDay = null,Object? reminderType = null,}) {
  return _then(_AddReminderState(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isRepeatEveryDay: null == isRepeatEveryDay ? _self.isRepeatEveryDay : isRepeatEveryDay // ignore: cast_nullable_to_non_nullable
as bool,reminderType: null == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as ReminderTypeEnum,
  ));
}


}

// dart format on
