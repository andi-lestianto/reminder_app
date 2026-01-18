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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _FillForm value)?  fillForm,TResult Function( _DateTimeChanged value)?  dateTimeChanged,TResult Function( _TitleChanged value)?  titleChanged,TResult Function( _NoteChanged value)?  noteChanged,TResult Function( _ImagePathChanged value)?  imagePathChanged,TResult Function( _IsRepeatEveryDayChanged value)?  isRepeatEveryDayChanged,TResult Function( _ReminderTypeChanged value)?  reminderTypeChanged,TResult Function( _PickImageFromGallery value)?  pickImageFromGallery,TResult Function( _SaveReminder value)?  saveReminder,TResult Function( _UpdateReminder value)?  updateReminder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _FillForm() when fillForm != null:
return fillForm(_that);case _DateTimeChanged() when dateTimeChanged != null:
return dateTimeChanged(_that);case _TitleChanged() when titleChanged != null:
return titleChanged(_that);case _NoteChanged() when noteChanged != null:
return noteChanged(_that);case _ImagePathChanged() when imagePathChanged != null:
return imagePathChanged(_that);case _IsRepeatEveryDayChanged() when isRepeatEveryDayChanged != null:
return isRepeatEveryDayChanged(_that);case _ReminderTypeChanged() when reminderTypeChanged != null:
return reminderTypeChanged(_that);case _PickImageFromGallery() when pickImageFromGallery != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _FillForm value)  fillForm,required TResult Function( _DateTimeChanged value)  dateTimeChanged,required TResult Function( _TitleChanged value)  titleChanged,required TResult Function( _NoteChanged value)  noteChanged,required TResult Function( _ImagePathChanged value)  imagePathChanged,required TResult Function( _IsRepeatEveryDayChanged value)  isRepeatEveryDayChanged,required TResult Function( _ReminderTypeChanged value)  reminderTypeChanged,required TResult Function( _PickImageFromGallery value)  pickImageFromGallery,required TResult Function( _SaveReminder value)  saveReminder,required TResult Function( _UpdateReminder value)  updateReminder,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _FillForm():
return fillForm(_that);case _DateTimeChanged():
return dateTimeChanged(_that);case _TitleChanged():
return titleChanged(_that);case _NoteChanged():
return noteChanged(_that);case _ImagePathChanged():
return imagePathChanged(_that);case _IsRepeatEveryDayChanged():
return isRepeatEveryDayChanged(_that);case _ReminderTypeChanged():
return reminderTypeChanged(_that);case _PickImageFromGallery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _FillForm value)?  fillForm,TResult? Function( _DateTimeChanged value)?  dateTimeChanged,TResult? Function( _TitleChanged value)?  titleChanged,TResult? Function( _NoteChanged value)?  noteChanged,TResult? Function( _ImagePathChanged value)?  imagePathChanged,TResult? Function( _IsRepeatEveryDayChanged value)?  isRepeatEveryDayChanged,TResult? Function( _ReminderTypeChanged value)?  reminderTypeChanged,TResult? Function( _PickImageFromGallery value)?  pickImageFromGallery,TResult? Function( _SaveReminder value)?  saveReminder,TResult? Function( _UpdateReminder value)?  updateReminder,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _FillForm() when fillForm != null:
return fillForm(_that);case _DateTimeChanged() when dateTimeChanged != null:
return dateTimeChanged(_that);case _TitleChanged() when titleChanged != null:
return titleChanged(_that);case _NoteChanged() when noteChanged != null:
return noteChanged(_that);case _ImagePathChanged() when imagePathChanged != null:
return imagePathChanged(_that);case _IsRepeatEveryDayChanged() when isRepeatEveryDayChanged != null:
return isRepeatEveryDayChanged(_that);case _ReminderTypeChanged() when reminderTypeChanged != null:
return reminderTypeChanged(_that);case _PickImageFromGallery() when pickImageFromGallery != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ReminderEntity? reminder)?  fillForm,TResult Function( DateTime dateTime)?  dateTimeChanged,TResult Function( String title)?  titleChanged,TResult Function( String? note)?  noteChanged,TResult Function( String? imagePath)?  imagePathChanged,TResult Function( bool isRepeatEveryDay)?  isRepeatEveryDayChanged,TResult Function( ReminderTypeEnum reminderType)?  reminderTypeChanged,TResult Function()?  pickImageFromGallery,TResult Function( String title,  DateTime? dateTime,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType)?  saveReminder,TResult Function( int id,  String title,  DateTime? dateTime,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType)?  updateReminder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _FillForm() when fillForm != null:
return fillForm(_that.reminder);case _DateTimeChanged() when dateTimeChanged != null:
return dateTimeChanged(_that.dateTime);case _TitleChanged() when titleChanged != null:
return titleChanged(_that.title);case _NoteChanged() when noteChanged != null:
return noteChanged(_that.note);case _ImagePathChanged() when imagePathChanged != null:
return imagePathChanged(_that.imagePath);case _IsRepeatEveryDayChanged() when isRepeatEveryDayChanged != null:
return isRepeatEveryDayChanged(_that.isRepeatEveryDay);case _ReminderTypeChanged() when reminderTypeChanged != null:
return reminderTypeChanged(_that.reminderType);case _PickImageFromGallery() when pickImageFromGallery != null:
return pickImageFromGallery();case _SaveReminder() when saveReminder != null:
return saveReminder(_that.title,_that.dateTime,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType);case _UpdateReminder() when updateReminder != null:
return updateReminder(_that.id,_that.title,_that.dateTime,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ReminderEntity? reminder)  fillForm,required TResult Function( DateTime dateTime)  dateTimeChanged,required TResult Function( String title)  titleChanged,required TResult Function( String? note)  noteChanged,required TResult Function( String? imagePath)  imagePathChanged,required TResult Function( bool isRepeatEveryDay)  isRepeatEveryDayChanged,required TResult Function( ReminderTypeEnum reminderType)  reminderTypeChanged,required TResult Function()  pickImageFromGallery,required TResult Function( String title,  DateTime? dateTime,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType)  saveReminder,required TResult Function( int id,  String title,  DateTime? dateTime,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType)  updateReminder,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _FillForm():
return fillForm(_that.reminder);case _DateTimeChanged():
return dateTimeChanged(_that.dateTime);case _TitleChanged():
return titleChanged(_that.title);case _NoteChanged():
return noteChanged(_that.note);case _ImagePathChanged():
return imagePathChanged(_that.imagePath);case _IsRepeatEveryDayChanged():
return isRepeatEveryDayChanged(_that.isRepeatEveryDay);case _ReminderTypeChanged():
return reminderTypeChanged(_that.reminderType);case _PickImageFromGallery():
return pickImageFromGallery();case _SaveReminder():
return saveReminder(_that.title,_that.dateTime,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType);case _UpdateReminder():
return updateReminder(_that.id,_that.title,_that.dateTime,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ReminderEntity? reminder)?  fillForm,TResult? Function( DateTime dateTime)?  dateTimeChanged,TResult? Function( String title)?  titleChanged,TResult? Function( String? note)?  noteChanged,TResult? Function( String? imagePath)?  imagePathChanged,TResult? Function( bool isRepeatEveryDay)?  isRepeatEveryDayChanged,TResult? Function( ReminderTypeEnum reminderType)?  reminderTypeChanged,TResult? Function()?  pickImageFromGallery,TResult? Function( String title,  DateTime? dateTime,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType)?  saveReminder,TResult? Function( int id,  String title,  DateTime? dateTime,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType)?  updateReminder,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _FillForm() when fillForm != null:
return fillForm(_that.reminder);case _DateTimeChanged() when dateTimeChanged != null:
return dateTimeChanged(_that.dateTime);case _TitleChanged() when titleChanged != null:
return titleChanged(_that.title);case _NoteChanged() when noteChanged != null:
return noteChanged(_that.note);case _ImagePathChanged() when imagePathChanged != null:
return imagePathChanged(_that.imagePath);case _IsRepeatEveryDayChanged() when isRepeatEveryDayChanged != null:
return isRepeatEveryDayChanged(_that.isRepeatEveryDay);case _ReminderTypeChanged() when reminderTypeChanged != null:
return reminderTypeChanged(_that.reminderType);case _PickImageFromGallery() when pickImageFromGallery != null:
return pickImageFromGallery();case _SaveReminder() when saveReminder != null:
return saveReminder(_that.title,_that.dateTime,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType);case _UpdateReminder() when updateReminder != null:
return updateReminder(_that.id,_that.title,_that.dateTime,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType);case _:
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


class _DateTimeChanged implements AddReminderEvent {
  const _DateTimeChanged(this.dateTime);
  

 final  DateTime dateTime;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateTimeChangedCopyWith<_DateTimeChanged> get copyWith => __$DateTimeChangedCopyWithImpl<_DateTimeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateTimeChanged&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime);

@override
String toString() {
  return 'AddReminderEvent.dateTimeChanged(dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class _$DateTimeChangedCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$DateTimeChangedCopyWith(_DateTimeChanged value, $Res Function(_DateTimeChanged) _then) = __$DateTimeChangedCopyWithImpl;
@useResult
$Res call({
 DateTime dateTime
});




}
/// @nodoc
class __$DateTimeChangedCopyWithImpl<$Res>
    implements _$DateTimeChangedCopyWith<$Res> {
  __$DateTimeChangedCopyWithImpl(this._self, this._then);

  final _DateTimeChanged _self;
  final $Res Function(_DateTimeChanged) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dateTime = null,}) {
  return _then(_DateTimeChanged(
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


class _IsRepeatEveryDayChanged implements AddReminderEvent {
  const _IsRepeatEveryDayChanged(this.isRepeatEveryDay);
  

 final  bool isRepeatEveryDay;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IsRepeatEveryDayChangedCopyWith<_IsRepeatEveryDayChanged> get copyWith => __$IsRepeatEveryDayChangedCopyWithImpl<_IsRepeatEveryDayChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IsRepeatEveryDayChanged&&(identical(other.isRepeatEveryDay, isRepeatEveryDay) || other.isRepeatEveryDay == isRepeatEveryDay));
}


@override
int get hashCode => Object.hash(runtimeType,isRepeatEveryDay);

@override
String toString() {
  return 'AddReminderEvent.isRepeatEveryDayChanged(isRepeatEveryDay: $isRepeatEveryDay)';
}


}

/// @nodoc
abstract mixin class _$IsRepeatEveryDayChangedCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$IsRepeatEveryDayChangedCopyWith(_IsRepeatEveryDayChanged value, $Res Function(_IsRepeatEveryDayChanged) _then) = __$IsRepeatEveryDayChangedCopyWithImpl;
@useResult
$Res call({
 bool isRepeatEveryDay
});




}
/// @nodoc
class __$IsRepeatEveryDayChangedCopyWithImpl<$Res>
    implements _$IsRepeatEveryDayChangedCopyWith<$Res> {
  __$IsRepeatEveryDayChangedCopyWithImpl(this._self, this._then);

  final _IsRepeatEveryDayChanged _self;
  final $Res Function(_IsRepeatEveryDayChanged) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isRepeatEveryDay = null,}) {
  return _then(_IsRepeatEveryDayChanged(
null == isRepeatEveryDay ? _self.isRepeatEveryDay : isRepeatEveryDay // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ReminderTypeChanged implements AddReminderEvent {
  const _ReminderTypeChanged(this.reminderType);
  

 final  ReminderTypeEnum reminderType;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderTypeChangedCopyWith<_ReminderTypeChanged> get copyWith => __$ReminderTypeChangedCopyWithImpl<_ReminderTypeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderTypeChanged&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType));
}


@override
int get hashCode => Object.hash(runtimeType,reminderType);

@override
String toString() {
  return 'AddReminderEvent.reminderTypeChanged(reminderType: $reminderType)';
}


}

/// @nodoc
abstract mixin class _$ReminderTypeChangedCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$ReminderTypeChangedCopyWith(_ReminderTypeChanged value, $Res Function(_ReminderTypeChanged) _then) = __$ReminderTypeChangedCopyWithImpl;
@useResult
$Res call({
 ReminderTypeEnum reminderType
});




}
/// @nodoc
class __$ReminderTypeChangedCopyWithImpl<$Res>
    implements _$ReminderTypeChangedCopyWith<$Res> {
  __$ReminderTypeChangedCopyWithImpl(this._self, this._then);

  final _ReminderTypeChanged _self;
  final $Res Function(_ReminderTypeChanged) _then;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reminderType = null,}) {
  return _then(_ReminderTypeChanged(
null == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as ReminderTypeEnum,
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
  const _SaveReminder({required this.title, required this.dateTime, this.note, this.imagePath, required this.isRepeatEveryDay, required this.reminderType});
  

 final  String title;
 final  DateTime? dateTime;
 final  String? note;
 final  String? imagePath;
 final  bool isRepeatEveryDay;
 final  ReminderTypeEnum reminderType;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveReminderCopyWith<_SaveReminder> get copyWith => __$SaveReminderCopyWithImpl<_SaveReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveReminder&&(identical(other.title, title) || other.title == title)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.note, note) || other.note == note)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isRepeatEveryDay, isRepeatEveryDay) || other.isRepeatEveryDay == isRepeatEveryDay)&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType));
}


@override
int get hashCode => Object.hash(runtimeType,title,dateTime,note,imagePath,isRepeatEveryDay,reminderType);

@override
String toString() {
  return 'AddReminderEvent.saveReminder(title: $title, dateTime: $dateTime, note: $note, imagePath: $imagePath, isRepeatEveryDay: $isRepeatEveryDay, reminderType: $reminderType)';
}


}

/// @nodoc
abstract mixin class _$SaveReminderCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$SaveReminderCopyWith(_SaveReminder value, $Res Function(_SaveReminder) _then) = __$SaveReminderCopyWithImpl;
@useResult
$Res call({
 String title, DateTime? dateTime, String? note, String? imagePath, bool isRepeatEveryDay, ReminderTypeEnum reminderType
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
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? dateTime = freezed,Object? note = freezed,Object? imagePath = freezed,Object? isRepeatEveryDay = null,Object? reminderType = null,}) {
  return _then(_SaveReminder(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dateTime: freezed == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isRepeatEveryDay: null == isRepeatEveryDay ? _self.isRepeatEveryDay : isRepeatEveryDay // ignore: cast_nullable_to_non_nullable
as bool,reminderType: null == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as ReminderTypeEnum,
  ));
}


}

/// @nodoc


class _UpdateReminder implements AddReminderEvent {
  const _UpdateReminder({required this.id, required this.title, required this.dateTime, this.note, this.imagePath, required this.isRepeatEveryDay, required this.reminderType});
  

 final  int id;
 final  String title;
 final  DateTime? dateTime;
 final  String? note;
 final  String? imagePath;
 final  bool isRepeatEveryDay;
 final  ReminderTypeEnum reminderType;

/// Create a copy of AddReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateReminderCopyWith<_UpdateReminder> get copyWith => __$UpdateReminderCopyWithImpl<_UpdateReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateReminder&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.note, note) || other.note == note)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isRepeatEveryDay, isRepeatEveryDay) || other.isRepeatEveryDay == isRepeatEveryDay)&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,dateTime,note,imagePath,isRepeatEveryDay,reminderType);

@override
String toString() {
  return 'AddReminderEvent.updateReminder(id: $id, title: $title, dateTime: $dateTime, note: $note, imagePath: $imagePath, isRepeatEveryDay: $isRepeatEveryDay, reminderType: $reminderType)';
}


}

/// @nodoc
abstract mixin class _$UpdateReminderCopyWith<$Res> implements $AddReminderEventCopyWith<$Res> {
  factory _$UpdateReminderCopyWith(_UpdateReminder value, $Res Function(_UpdateReminder) _then) = __$UpdateReminderCopyWithImpl;
@useResult
$Res call({
 int id, String title, DateTime? dateTime, String? note, String? imagePath, bool isRepeatEveryDay, ReminderTypeEnum reminderType
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
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? dateTime = freezed,Object? note = freezed,Object? imagePath = freezed,Object? isRepeatEveryDay = null,Object? reminderType = null,}) {
  return _then(_UpdateReminder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dateTime: freezed == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isRepeatEveryDay: null == isRepeatEveryDay ? _self.isRepeatEveryDay : isRepeatEveryDay // ignore: cast_nullable_to_non_nullable
as bool,reminderType: null == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as ReminderTypeEnum,
  ));
}


}

/// @nodoc
mixin _$AddReminderState {

 DateTime? get dateTime; String get title; String? get note; String? get imagePath; bool get isRepeatEveryDay; ReminderTypeEnum get reminderType; ActionStatus get actionStatus;
/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddReminderStateCopyWith<AddReminderState> get copyWith => _$AddReminderStateCopyWithImpl<AddReminderState>(this as AddReminderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReminderState&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isRepeatEveryDay, isRepeatEveryDay) || other.isRepeatEveryDay == isRepeatEveryDay)&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,title,note,imagePath,isRepeatEveryDay,reminderType,actionStatus);

@override
String toString() {
  return 'AddReminderState(dateTime: $dateTime, title: $title, note: $note, imagePath: $imagePath, isRepeatEveryDay: $isRepeatEveryDay, reminderType: $reminderType, actionStatus: $actionStatus)';
}


}

/// @nodoc
abstract mixin class $AddReminderStateCopyWith<$Res>  {
  factory $AddReminderStateCopyWith(AddReminderState value, $Res Function(AddReminderState) _then) = _$AddReminderStateCopyWithImpl;
@useResult
$Res call({
 DateTime? dateTime, String title, String? note, String? imagePath, bool isRepeatEveryDay, ReminderTypeEnum reminderType, ActionStatus actionStatus
});


$ActionStatusCopyWith<$Res> get actionStatus;

}
/// @nodoc
class _$AddReminderStateCopyWithImpl<$Res>
    implements $AddReminderStateCopyWith<$Res> {
  _$AddReminderStateCopyWithImpl(this._self, this._then);

  final AddReminderState _self;
  final $Res Function(AddReminderState) _then;

/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateTime = freezed,Object? title = null,Object? note = freezed,Object? imagePath = freezed,Object? isRepeatEveryDay = null,Object? reminderType = null,Object? actionStatus = null,}) {
  return _then(_self.copyWith(
dateTime: freezed == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isRepeatEveryDay: null == isRepeatEveryDay ? _self.isRepeatEveryDay : isRepeatEveryDay // ignore: cast_nullable_to_non_nullable
as bool,reminderType: null == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as ReminderTypeEnum,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as ActionStatus,
  ));
}
/// Create a copy of AddReminderState
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? dateTime,  String title,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType,  ActionStatus actionStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddReminderState() when $default != null:
return $default(_that.dateTime,_that.title,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType,_that.actionStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? dateTime,  String title,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType,  ActionStatus actionStatus)  $default,) {final _that = this;
switch (_that) {
case _AddReminderState():
return $default(_that.dateTime,_that.title,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType,_that.actionStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? dateTime,  String title,  String? note,  String? imagePath,  bool isRepeatEveryDay,  ReminderTypeEnum reminderType,  ActionStatus actionStatus)?  $default,) {final _that = this;
switch (_that) {
case _AddReminderState() when $default != null:
return $default(_that.dateTime,_that.title,_that.note,_that.imagePath,_that.isRepeatEveryDay,_that.reminderType,_that.actionStatus);case _:
  return null;

}
}

}

/// @nodoc


class _AddReminderState implements AddReminderState {
  const _AddReminderState({this.dateTime, required this.title, this.note, this.imagePath, this.isRepeatEveryDay = false, required this.reminderType, this.actionStatus = const ActionStatus.idle()});
  

@override final  DateTime? dateTime;
@override final  String title;
@override final  String? note;
@override final  String? imagePath;
@override@JsonKey() final  bool isRepeatEveryDay;
@override final  ReminderTypeEnum reminderType;
@override@JsonKey() final  ActionStatus actionStatus;

/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddReminderStateCopyWith<_AddReminderState> get copyWith => __$AddReminderStateCopyWithImpl<_AddReminderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddReminderState&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isRepeatEveryDay, isRepeatEveryDay) || other.isRepeatEveryDay == isRepeatEveryDay)&&(identical(other.reminderType, reminderType) || other.reminderType == reminderType)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,title,note,imagePath,isRepeatEveryDay,reminderType,actionStatus);

@override
String toString() {
  return 'AddReminderState(dateTime: $dateTime, title: $title, note: $note, imagePath: $imagePath, isRepeatEveryDay: $isRepeatEveryDay, reminderType: $reminderType, actionStatus: $actionStatus)';
}


}

/// @nodoc
abstract mixin class _$AddReminderStateCopyWith<$Res> implements $AddReminderStateCopyWith<$Res> {
  factory _$AddReminderStateCopyWith(_AddReminderState value, $Res Function(_AddReminderState) _then) = __$AddReminderStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime? dateTime, String title, String? note, String? imagePath, bool isRepeatEveryDay, ReminderTypeEnum reminderType, ActionStatus actionStatus
});


@override $ActionStatusCopyWith<$Res> get actionStatus;

}
/// @nodoc
class __$AddReminderStateCopyWithImpl<$Res>
    implements _$AddReminderStateCopyWith<$Res> {
  __$AddReminderStateCopyWithImpl(this._self, this._then);

  final _AddReminderState _self;
  final $Res Function(_AddReminderState) _then;

/// Create a copy of AddReminderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateTime = freezed,Object? title = null,Object? note = freezed,Object? imagePath = freezed,Object? isRepeatEveryDay = null,Object? reminderType = null,Object? actionStatus = null,}) {
  return _then(_AddReminderState(
dateTime: freezed == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isRepeatEveryDay: null == isRepeatEveryDay ? _self.isRepeatEveryDay : isRepeatEveryDay // ignore: cast_nullable_to_non_nullable
as bool,reminderType: null == reminderType ? _self.reminderType : reminderType // ignore: cast_nullable_to_non_nullable
as ReminderTypeEnum,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as ActionStatus,
  ));
}

/// Create a copy of AddReminderState
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
