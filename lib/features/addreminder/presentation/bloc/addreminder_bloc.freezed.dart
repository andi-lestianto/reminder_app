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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _InitAddReminder value)?  initAddReminder,TResult Function( _SelectedDateTimeChanged value)?  selectedDateTimeChanged,TResult Function( _TitleChanged value)?  titleChanged,TResult Function( _NoteChanged value)?  noteChanged,TResult Function( _ImagePathChanged value)?  imagePathChanged,TResult Function( _PickImageFromGallery value)?  pickImageFromGallery,TResult Function( _SaveReminder value)?  saveReminder,TResult Function( _UpdateReminder value)?  updateReminder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _InitAddReminder() when initAddReminder != null:
return initAddReminder(_that);case _SelectedDateTimeChanged() when selectedDateTimeChanged != null:
return selectedDateTimeChanged(_that);case _TitleChanged() when titleChanged != null:
return titleChanged(_that);case _NoteChanged() when noteChanged != null:
return noteChanged(_that);case _ImagePathChanged() when imagePathChanged != null:
return imagePathChanged(_that);case _PickImageFromGallery() when pickImageFromGallery != null:
return pickImageFromGallery(_that);case _SaveReminder() when saveReminder != null:
return saveReminder(_that);case _UpdateReminder() when updateReminder != null:
return updateReminder(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _InitAddReminder value)  initAddReminder,required TResult Function( _SelectedDateTimeChanged value)  selectedDateTimeChanged,required TResult Function( _TitleChanged value)  titleChanged,required TResult Function( _NoteChanged value)  noteChanged,required TResult Function( _ImagePathChanged value)  imagePathChanged,required TResult Function( _PickImageFromGallery value)  pickImageFromGallery,required TResult Function( _SaveReminder value)  saveReminder,required TResult Function( _UpdateReminder value)  updateReminder,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _InitAddReminder():
return initAddReminder(_that);case _SelectedDateTimeChanged():
return selectedDateTimeChanged(_that);case _TitleChanged():
return titleChanged(_that);case _NoteChanged():
return noteChanged(_that);case _ImagePathChanged():
return imagePathChanged(_that);case _PickImageFromGallery():
return pickImageFromGallery(_that);case _SaveReminder():
return saveReminder(_that);case _UpdateReminder():
return updateReminder(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _InitAddReminder value)?  initAddReminder,TResult? Function( _SelectedDateTimeChanged value)?  selectedDateTimeChanged,TResult? Function( _TitleChanged value)?  titleChanged,TResult? Function( _NoteChanged value)?  noteChanged,TResult? Function( _ImagePathChanged value)?  imagePathChanged,TResult? Function( _PickImageFromGallery value)?  pickImageFromGallery,TResult? Function( _SaveReminder value)?  saveReminder,TResult? Function( _UpdateReminder value)?  updateReminder,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _InitAddReminder() when initAddReminder != null:
return initAddReminder(_that);case _SelectedDateTimeChanged() when selectedDateTimeChanged != null:
return selectedDateTimeChanged(_that);case _TitleChanged() when titleChanged != null:
return titleChanged(_that);case _NoteChanged() when noteChanged != null:
return noteChanged(_that);case _ImagePathChanged() when imagePathChanged != null:
return imagePathChanged(_that);case _PickImageFromGallery() when pickImageFromGallery != null:
return pickImageFromGallery(_that);case _SaveReminder() when saveReminder != null:
return saveReminder(_that);case _UpdateReminder() when updateReminder != null:
return updateReminder(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ReminderEntity? reminder,  DateTime selectedDate)?  initAddReminder,TResult Function( DateTime dateTime)?  selectedDateTimeChanged,TResult Function( String title)?  titleChanged,TResult Function( String? note)?  noteChanged,TResult Function( String? imagePath)?  imagePathChanged,TResult Function()?  pickImageFromGallery,TResult Function( String title,  DateTime? dateTime,  String? note,  String? imagePath)?  saveReminder,TResult Function( int id,  String title,  DateTime? dateTime,  String? note,  String? imagePath)?  updateReminder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _InitAddReminder() when initAddReminder != null:
return initAddReminder(_that.reminder,_that.selectedDate);case _SelectedDateTimeChanged() when selectedDateTimeChanged != null:
return selectedDateTimeChanged(_that.dateTime);case _TitleChanged() when titleChanged != null:
return titleChanged(_that.title);case _NoteChanged() when noteChanged != null:
return noteChanged(_that.note);case _ImagePathChanged() when imagePathChanged != null:
return imagePathChanged(_that.imagePath);case _PickImageFromGallery() when pickImageFromGallery != null:
return pickImageFromGallery();case _SaveReminder() when saveReminder != null:
return saveReminder(_that.title,_that.dateTime,_that.note,_that.imagePath);case _UpdateReminder() when updateReminder != null:
return updateReminder(_that.id,_that.title,_that.dateTime,_that.note,_that.imagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ReminderEntity? reminder,  DateTime selectedDate)  initAddReminder,required TResult Function( DateTime dateTime)  selectedDateTimeChanged,required TResult Function( String title)  titleChanged,required TResult Function( String? note)  noteChanged,required TResult Function( String? imagePath)  imagePathChanged,required TResult Function()  pickImageFromGallery,required TResult Function( String title,  DateTime? dateTime,  String? note,  String? imagePath)  saveReminder,required TResult Function( int id,  String title,  DateTime? dateTime,  String? note,  String? imagePath)  updateReminder,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _InitAddReminder():
return initAddReminder(_that.reminder,_that.selectedDate);case _SelectedDateTimeChanged():
return selectedDateTimeChanged(_that.dateTime);case _TitleChanged():
return titleChanged(_that.title);case _NoteChanged():
return noteChanged(_that.note);case _ImagePathChanged():
return imagePathChanged(_that.imagePath);case _PickImageFromGallery():
return pickImageFromGallery();case _SaveReminder():
return saveReminder(_that.title,_that.dateTime,_that.note,_that.imagePath);case _UpdateReminder():
return updateReminder(_that.id,_that.title,_that.dateTime,_that.note,_that.imagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ReminderEntity? reminder,  DateTime selectedDate)?  initAddReminder,TResult? Function( DateTime dateTime)?  selectedDateTimeChanged,TResult? Function( String title)?  titleChanged,TResult? Function( String? note)?  noteChanged,TResult? Function( String? imagePath)?  imagePathChanged,TResult? Function()?  pickImageFromGallery,TResult? Function( String title,  DateTime? dateTime,  String? note,  String? imagePath)?  saveReminder,TResult? Function( int id,  String title,  DateTime? dateTime,  String? note,  String? imagePath)?  updateReminder,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _InitAddReminder() when initAddReminder != null:
return initAddReminder(_that.reminder,_that.selectedDate);case _SelectedDateTimeChanged() when selectedDateTimeChanged != null:
return selectedDateTimeChanged(_that.dateTime);case _TitleChanged() when titleChanged != null:
return titleChanged(_that.title);case _NoteChanged() when noteChanged != null:
return noteChanged(_that.note);case _ImagePathChanged() when imagePathChanged != null:
return imagePathChanged(_that.imagePath);case _PickImageFromGallery() when pickImageFromGallery != null:
return pickImageFromGallery();case _SaveReminder() when saveReminder != null:
return saveReminder(_that.title,_that.dateTime,_that.note,_that.imagePath);case _UpdateReminder() when updateReminder != null:
return updateReminder(_that.id,_that.title,_that.dateTime,_that.note,_that.imagePath);case _:
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


class _InitAddReminder implements AddReminderEvent {
  const _InitAddReminder({required this.reminder, required this.selectedDate});
  

 final  ReminderEntity? reminder;
 final  DateTime selectedDate;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitAddReminderCopyWith<_InitAddReminder> get copyWith => __$InitAddReminderCopyWithImpl<_InitAddReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitAddReminder&&(identical(other.reminder, reminder) || other.reminder == reminder)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate));
}


@override
int get hashCode => Object.hash(runtimeType,reminder,selectedDate);

@override
String toString() {
  return 'AddReminderEvent.initAddReminder(reminder: $reminder, selectedDate: $selectedDate)';
}


}

/// @nodoc
abstract mixin class _$InitAddReminderCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$InitAddReminderCopyWith(_InitAddReminder value, $Res Function(_InitAddReminder) _then) = __$InitAddReminderCopyWithImpl;
@useResult
$Res call({
 ReminderEntity? reminder, DateTime selectedDate
});


$ReminderEntityCopyWith<$Res>? get reminder;

}
/// @nodoc
class __$InitAddReminderCopyWithImpl<$Res>
    implements _$InitAddReminderCopyWith<$Res> {
  __$InitAddReminderCopyWithImpl(this._self, this._then);

  final _InitAddReminder _self;
  final $Res Function(_InitAddReminder) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reminder = freezed,Object? selectedDate = null,}) {
  return _then(_InitAddReminder(
reminder: freezed == reminder ? _self.reminder : reminder // ignore: cast_nullable_to_non_nullable
as ReminderEntity?,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,
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


class _SelectedDateTimeChanged implements AddReminderEvent {
  const _SelectedDateTimeChanged(this.dateTime);
  

 final  DateTime dateTime;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectedDateTimeChangedCopyWith<_SelectedDateTimeChanged> get copyWith => __$SelectedDateTimeChangedCopyWithImpl<_SelectedDateTimeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectedDateTimeChanged&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime);

@override
String toString() {
  return 'AddReminderEvent.selectedDateTimeChanged(dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class _$SelectedDateTimeChangedCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$SelectedDateTimeChangedCopyWith(_SelectedDateTimeChanged value, $Res Function(_SelectedDateTimeChanged) _then) = __$SelectedDateTimeChangedCopyWithImpl;
@useResult
$Res call({
 DateTime dateTime
});




}
/// @nodoc
class __$SelectedDateTimeChangedCopyWithImpl<$Res>
    implements _$SelectedDateTimeChangedCopyWith<$Res> {
  __$SelectedDateTimeChangedCopyWithImpl(this._self, this._then);

  final _SelectedDateTimeChanged _self;
  final $Res Function(_SelectedDateTimeChanged) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dateTime = null,}) {
  return _then(_SelectedDateTimeChanged(
null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _TitleChanged implements AddReminderEvent {
  const _TitleChanged(this.title);
  

 final  String title;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TitleChangedCopyWith<_TitleChanged> get copyWith => __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TitleChanged&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'AddReminderEvent.titleChanged(title: $title)';
}


}

/// @nodoc
abstract mixin class _$TitleChangedCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$TitleChangedCopyWith(_TitleChanged value, $Res Function(_TitleChanged) _then) = __$TitleChangedCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(this._self, this._then);

  final _TitleChanged _self;
  final $Res Function(_TitleChanged) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_TitleChanged(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NoteChanged implements AddReminderEvent {
  const _NoteChanged(this.note);
  

 final  String? note;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteChangedCopyWith<_NoteChanged> get copyWith => __$NoteChangedCopyWithImpl<_NoteChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteChanged&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,note);

@override
String toString() {
  return 'AddReminderEvent.noteChanged(note: $note)';
}


}

/// @nodoc
abstract mixin class _$NoteChangedCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$NoteChangedCopyWith(_NoteChanged value, $Res Function(_NoteChanged) _then) = __$NoteChangedCopyWithImpl;
@useResult
$Res call({
 String? note
});




}
/// @nodoc
class __$NoteChangedCopyWithImpl<$Res>
    implements _$NoteChangedCopyWith<$Res> {
  __$NoteChangedCopyWithImpl(this._self, this._then);

  final _NoteChanged _self;
  final $Res Function(_NoteChanged) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? note = freezed,}) {
  return _then(_NoteChanged(
freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ImagePathChanged implements AddReminderEvent {
  const _ImagePathChanged(this.imagePath);
  

 final  String? imagePath;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagePathChangedCopyWith<_ImagePathChanged> get copyWith => __$ImagePathChangedCopyWithImpl<_ImagePathChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagePathChanged&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath);

@override
String toString() {
  return 'AddReminderEvent.imagePathChanged(imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$ImagePathChangedCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$ImagePathChangedCopyWith(_ImagePathChanged value, $Res Function(_ImagePathChanged) _then) = __$ImagePathChangedCopyWithImpl;
@useResult
$Res call({
 String? imagePath
});




}
/// @nodoc
class __$ImagePathChangedCopyWithImpl<$Res>
    implements _$ImagePathChangedCopyWith<$Res> {
  __$ImagePathChangedCopyWithImpl(this._self, this._then);

  final _ImagePathChanged _self;
  final $Res Function(_ImagePathChanged) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imagePath = freezed,}) {
  return _then(_ImagePathChanged(
freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _PickImageFromGallery implements AddReminderEvent {
  const _PickImageFromGallery();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickImageFromGallery);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddReminderEvent.pickImageFromGallery()';
}


}




/// @nodoc


class _SaveReminder implements AddReminderEvent {
  const _SaveReminder({required this.title, required this.dateTime, this.note, this.imagePath});
  

 final  String title;
 final  DateTime? dateTime;
 final  String? note;
 final  String? imagePath;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveReminderCopyWith<_SaveReminder> get copyWith => __$SaveReminderCopyWithImpl<_SaveReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveReminder&&(identical(other.title, title) || other.title == title)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.note, note) || other.note == note)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,title,dateTime,note,imagePath);

@override
String toString() {
  return 'AddReminderEvent.saveReminder(title: $title, dateTime: $dateTime, note: $note, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$SaveReminderCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$SaveReminderCopyWith(_SaveReminder value, $Res Function(_SaveReminder) _then) = __$SaveReminderCopyWithImpl;
@useResult
$Res call({
 String title, DateTime? dateTime, String? note, String? imagePath
});




}
/// @nodoc
class __$SaveReminderCopyWithImpl<$Res>
    implements _$SaveReminderCopyWith<$Res> {
  __$SaveReminderCopyWithImpl(this._self, this._then);

  final _SaveReminder _self;
  final $Res Function(_SaveReminder) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? dateTime = freezed,Object? note = freezed,Object? imagePath = freezed,}) {
  return _then(_SaveReminder(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dateTime: freezed == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpdateReminder implements AddReminderEvent {
  const _UpdateReminder({required this.id, required this.title, required this.dateTime, this.note, this.imagePath});
  

 final  int id;
 final  String title;
 final  DateTime? dateTime;
 final  String? note;
 final  String? imagePath;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateReminderCopyWith<_UpdateReminder> get copyWith => __$UpdateReminderCopyWithImpl<_UpdateReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateReminder&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.note, note) || other.note == note)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,dateTime,note,imagePath);

@override
String toString() {
  return 'AddReminderEvent.updateReminder(id: $id, title: $title, dateTime: $dateTime, note: $note, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$UpdateReminderCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$UpdateReminderCopyWith(_UpdateReminder value, $Res Function(_UpdateReminder) _then) = __$UpdateReminderCopyWithImpl;
@useResult
$Res call({
 int id, String title, DateTime? dateTime, String? note, String? imagePath
});




}
/// @nodoc
class __$UpdateReminderCopyWithImpl<$Res>
    implements _$UpdateReminderCopyWith<$Res> {
  __$UpdateReminderCopyWithImpl(this._self, this._then);

  final _UpdateReminder _self;
  final $Res Function(_UpdateReminder) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? dateTime = freezed,Object? note = freezed,Object? imagePath = freezed,}) {
  return _then(_UpdateReminder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dateTime: freezed == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$AddReminderState {

 DateTime get selectedDate; String get title; String? get note; String? get imagePath; ReminderEntity? get editedReminder; ActionStatus get actionStatus;
/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddReminderStateCopyWith<AddReminderState> get copyWith => _$AddReminderStateCopyWithImpl<AddReminderState>(this as AddReminderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReminderState&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.editedReminder, editedReminder) || other.editedReminder == editedReminder)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate,title,note,imagePath,editedReminder,actionStatus);

@override
String toString() {
  return 'AddReminderState(selectedDate: $selectedDate, title: $title, note: $note, imagePath: $imagePath, editedReminder: $editedReminder, actionStatus: $actionStatus)';
}


}

/// @nodoc
abstract mixin class $AddReminderStateCopyWith<$Res>  {
  factory $AddReminderStateCopyWith(AddReminderState value, $Res Function(AddReminderState) _then) = _$AddReminderStateCopyWithImpl;
@useResult
$Res call({
 DateTime selectedDate, String title, String? note, String? imagePath, ReminderEntity? editedReminder, ActionStatus actionStatus
});


$ReminderEntityCopyWith<$Res>? get editedReminder;$ActionStatusCopyWith<$Res> get actionStatus;

}
/// @nodoc
class _$AddReminderStateCopyWithImpl<$Res>
    implements $AddReminderStateCopyWith<$Res> {
  _$AddReminderStateCopyWithImpl(this._self, this._then);

  final AddReminderState _self;
  final $Res Function(AddReminderState) _then;

/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedDate = null,Object? title = null,Object? note = freezed,Object? imagePath = freezed,Object? editedReminder = freezed,Object? actionStatus = null,}) {
  return _then(_self.copyWith(
selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,editedReminder: freezed == editedReminder ? _self.editedReminder : editedReminder // ignore: cast_nullable_to_non_nullable
as ReminderEntity?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as ActionStatus,
  ));
}
/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReminderEntityCopyWith<$Res>? get editedReminder {
    if (_self.editedReminder == null) {
    return null;
  }

  return $ReminderEntityCopyWith<$Res>(_self.editedReminder!, (value) {
    return _then(_self.copyWith(editedReminder: value));
  });
}/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionStatusCopyWith<$Res> get actionStatus {
  
  return $ActionStatusCopyWith<$Res>(_self.actionStatus, (value) {
    return _then(_self.copyWith(actionStatus: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime selectedDate,  String title,  String? note,  String? imagePath,  ReminderEntity? editedReminder,  ActionStatus actionStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddReminderState() when $default != null:
return $default(_that.selectedDate,_that.title,_that.note,_that.imagePath,_that.editedReminder,_that.actionStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime selectedDate,  String title,  String? note,  String? imagePath,  ReminderEntity? editedReminder,  ActionStatus actionStatus)  $default,) {final _that = this;
switch (_that) {
case _AddReminderState():
return $default(_that.selectedDate,_that.title,_that.note,_that.imagePath,_that.editedReminder,_that.actionStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime selectedDate,  String title,  String? note,  String? imagePath,  ReminderEntity? editedReminder,  ActionStatus actionStatus)?  $default,) {final _that = this;
switch (_that) {
case _AddReminderState() when $default != null:
return $default(_that.selectedDate,_that.title,_that.note,_that.imagePath,_that.editedReminder,_that.actionStatus);case _:
  return null;

}
}

}

/// @nodoc


class _AddReminderState implements AddReminderState {
  const _AddReminderState({required this.selectedDate, required this.title, this.note, this.imagePath, this.editedReminder, this.actionStatus = const ActionStatus.idle()});
  

@override final  DateTime selectedDate;
@override final  String title;
@override final  String? note;
@override final  String? imagePath;
@override final  ReminderEntity? editedReminder;
@override@JsonKey() final  ActionStatus actionStatus;

/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddReminderStateCopyWith<_AddReminderState> get copyWith => __$AddReminderStateCopyWithImpl<_AddReminderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddReminderState&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.editedReminder, editedReminder) || other.editedReminder == editedReminder)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDate,title,note,imagePath,editedReminder,actionStatus);

@override
String toString() {
  return 'AddReminderState(selectedDate: $selectedDate, title: $title, note: $note, imagePath: $imagePath, editedReminder: $editedReminder, actionStatus: $actionStatus)';
}


}

/// @nodoc
abstract mixin class _$AddReminderStateCopyWith<$Res> implements $AddReminderStateCopyWith<$Res> {
  factory _$AddReminderStateCopyWith(_AddReminderState value, $Res Function(_AddReminderState) _then) = __$AddReminderStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime selectedDate, String title, String? note, String? imagePath, ReminderEntity? editedReminder, ActionStatus actionStatus
});


@override $ReminderEntityCopyWith<$Res>? get editedReminder;@override $ActionStatusCopyWith<$Res> get actionStatus;

}
/// @nodoc
class __$AddReminderStateCopyWithImpl<$Res>
    implements _$AddReminderStateCopyWith<$Res> {
  __$AddReminderStateCopyWithImpl(this._self, this._then);

  final _AddReminderState _self;
  final $Res Function(_AddReminderState) _then;

/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedDate = null,Object? title = null,Object? note = freezed,Object? imagePath = freezed,Object? editedReminder = freezed,Object? actionStatus = null,}) {
  return _then(_AddReminderState(
selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,editedReminder: freezed == editedReminder ? _self.editedReminder : editedReminder // ignore: cast_nullable_to_non_nullable
as ReminderEntity?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as ActionStatus,
  ));
}

/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReminderEntityCopyWith<$Res>? get editedReminder {
    if (_self.editedReminder == null) {
    return null;
  }

  return $ReminderEntityCopyWith<$Res>(_self.editedReminder!, (value) {
    return _then(_self.copyWith(editedReminder: value));
  });
}/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionStatusCopyWith<$Res> get actionStatus {
  
  return $ActionStatusCopyWith<$Res>(_self.actionStatus, (value) {
    return _then(_self.copyWith(actionStatus: value));
  });
}
}

// dart format on
