// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReminderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderEvent()';
}


}

/// @nodoc
class $ReminderEventCopyWith<$Res>  {
$ReminderEventCopyWith(ReminderEvent _, $Res Function(ReminderEvent) __);
}


/// Adds pattern-matching-related methods to [ReminderEvent].
extension ReminderEventPatterns on ReminderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchAllData value)?  fetchAllData,TResult Function( _FetchWeekDates value)?  fetchWeekDates,TResult Function( _FetchReminders value)?  fetchReminders,TResult Function( _DeleteReminder value)?  deleteReminder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchAllData() when fetchAllData != null:
return fetchAllData(_that);case _FetchWeekDates() when fetchWeekDates != null:
return fetchWeekDates(_that);case _FetchReminders() when fetchReminders != null:
return fetchReminders(_that);case _DeleteReminder() when deleteReminder != null:
return deleteReminder(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchAllData value)  fetchAllData,required TResult Function( _FetchWeekDates value)  fetchWeekDates,required TResult Function( _FetchReminders value)  fetchReminders,required TResult Function( _DeleteReminder value)  deleteReminder,}){
final _that = this;
switch (_that) {
case _FetchAllData():
return fetchAllData(_that);case _FetchWeekDates():
return fetchWeekDates(_that);case _FetchReminders():
return fetchReminders(_that);case _DeleteReminder():
return deleteReminder(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchAllData value)?  fetchAllData,TResult? Function( _FetchWeekDates value)?  fetchWeekDates,TResult? Function( _FetchReminders value)?  fetchReminders,TResult? Function( _DeleteReminder value)?  deleteReminder,}){
final _that = this;
switch (_that) {
case _FetchAllData() when fetchAllData != null:
return fetchAllData(_that);case _FetchWeekDates() when fetchWeekDates != null:
return fetchWeekDates(_that);case _FetchReminders() when fetchReminders != null:
return fetchReminders(_that);case _DeleteReminder() when deleteReminder != null:
return deleteReminder(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchAllData,TResult Function()?  fetchWeekDates,TResult Function()?  fetchReminders,TResult Function( int id)?  deleteReminder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchAllData() when fetchAllData != null:
return fetchAllData();case _FetchWeekDates() when fetchWeekDates != null:
return fetchWeekDates();case _FetchReminders() when fetchReminders != null:
return fetchReminders();case _DeleteReminder() when deleteReminder != null:
return deleteReminder(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchAllData,required TResult Function()  fetchWeekDates,required TResult Function()  fetchReminders,required TResult Function( int id)  deleteReminder,}) {final _that = this;
switch (_that) {
case _FetchAllData():
return fetchAllData();case _FetchWeekDates():
return fetchWeekDates();case _FetchReminders():
return fetchReminders();case _DeleteReminder():
return deleteReminder(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchAllData,TResult? Function()?  fetchWeekDates,TResult? Function()?  fetchReminders,TResult? Function( int id)?  deleteReminder,}) {final _that = this;
switch (_that) {
case _FetchAllData() when fetchAllData != null:
return fetchAllData();case _FetchWeekDates() when fetchWeekDates != null:
return fetchWeekDates();case _FetchReminders() when fetchReminders != null:
return fetchReminders();case _DeleteReminder() when deleteReminder != null:
return deleteReminder(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _FetchAllData implements ReminderEvent {
  const _FetchAllData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchAllData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderEvent.fetchAllData()';
}


}




/// @nodoc


class _FetchWeekDates implements ReminderEvent {
  const _FetchWeekDates();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchWeekDates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderEvent.fetchWeekDates()';
}


}




/// @nodoc


class _FetchReminders implements ReminderEvent {
  const _FetchReminders();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchReminders);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReminderEvent.fetchReminders()';
}


}




/// @nodoc


class _DeleteReminder implements ReminderEvent {
  const _DeleteReminder(this.id);
  

 final  int id;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteReminderCopyWith<_DeleteReminder> get copyWith => __$DeleteReminderCopyWithImpl<_DeleteReminder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteReminder&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ReminderEvent.deleteReminder(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteReminderCopyWith<$Res> implements $ReminderEventCopyWith<$Res> {
  factory _$DeleteReminderCopyWith(_DeleteReminder value, $Res Function(_DeleteReminder) _then) = __$DeleteReminderCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteReminderCopyWithImpl<$Res>
    implements _$DeleteReminderCopyWith<$Res> {
  __$DeleteReminderCopyWithImpl(this._self, this._then);

  final _DeleteReminder _self;
  final $Res Function(_DeleteReminder) _then;

/// Create a copy of ReminderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteReminder(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ReminderState {

 SectionState<DateTime> get weekDatesState; SectionState<ReminderEntity> get remindersState; ReminderEntity? get upComingReminder; ActionStatus get actionStatus;
/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReminderStateCopyWith<ReminderState> get copyWith => _$ReminderStateCopyWithImpl<ReminderState>(this as ReminderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderState&&(identical(other.weekDatesState, weekDatesState) || other.weekDatesState == weekDatesState)&&(identical(other.remindersState, remindersState) || other.remindersState == remindersState)&&(identical(other.upComingReminder, upComingReminder) || other.upComingReminder == upComingReminder)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,weekDatesState,remindersState,upComingReminder,actionStatus);

@override
String toString() {
  return 'ReminderState(weekDatesState: $weekDatesState, remindersState: $remindersState, upComingReminder: $upComingReminder, actionStatus: $actionStatus)';
}


}

/// @nodoc
abstract mixin class $ReminderStateCopyWith<$Res>  {
  factory $ReminderStateCopyWith(ReminderState value, $Res Function(ReminderState) _then) = _$ReminderStateCopyWithImpl;
@useResult
$Res call({
 SectionState<DateTime> weekDatesState, SectionState<ReminderEntity> remindersState, ReminderEntity? upComingReminder, ActionStatus actionStatus
});


$SectionStateCopyWith<DateTime, $Res> get weekDatesState;$SectionStateCopyWith<ReminderEntity, $Res> get remindersState;$ReminderEntityCopyWith<$Res>? get upComingReminder;$ActionStatusCopyWith<$Res> get actionStatus;

}
/// @nodoc
class _$ReminderStateCopyWithImpl<$Res>
    implements $ReminderStateCopyWith<$Res> {
  _$ReminderStateCopyWithImpl(this._self, this._then);

  final ReminderState _self;
  final $Res Function(ReminderState) _then;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weekDatesState = null,Object? remindersState = null,Object? upComingReminder = freezed,Object? actionStatus = null,}) {
  return _then(_self.copyWith(
weekDatesState: null == weekDatesState ? _self.weekDatesState : weekDatesState // ignore: cast_nullable_to_non_nullable
as SectionState<DateTime>,remindersState: null == remindersState ? _self.remindersState : remindersState // ignore: cast_nullable_to_non_nullable
as SectionState<ReminderEntity>,upComingReminder: freezed == upComingReminder ? _self.upComingReminder : upComingReminder // ignore: cast_nullable_to_non_nullable
as ReminderEntity?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as ActionStatus,
  ));
}
/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionStateCopyWith<DateTime, $Res> get weekDatesState {
  
  return $SectionStateCopyWith<DateTime, $Res>(_self.weekDatesState, (value) {
    return _then(_self.copyWith(weekDatesState: value));
  });
}/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionStateCopyWith<ReminderEntity, $Res> get remindersState {
  
  return $SectionStateCopyWith<ReminderEntity, $Res>(_self.remindersState, (value) {
    return _then(_self.copyWith(remindersState: value));
  });
}/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReminderEntityCopyWith<$Res>? get upComingReminder {
    if (_self.upComingReminder == null) {
    return null;
  }

  return $ReminderEntityCopyWith<$Res>(_self.upComingReminder!, (value) {
    return _then(_self.copyWith(upComingReminder: value));
  });
}/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActionStatusCopyWith<$Res> get actionStatus {
  
  return $ActionStatusCopyWith<$Res>(_self.actionStatus, (value) {
    return _then(_self.copyWith(actionStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReminderState].
extension ReminderStatePatterns on ReminderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReminderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReminderState value)  $default,){
final _that = this;
switch (_that) {
case _ReminderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReminderState value)?  $default,){
final _that = this;
switch (_that) {
case _ReminderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SectionState<DateTime> weekDatesState,  SectionState<ReminderEntity> remindersState,  ReminderEntity? upComingReminder,  ActionStatus actionStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderState() when $default != null:
return $default(_that.weekDatesState,_that.remindersState,_that.upComingReminder,_that.actionStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SectionState<DateTime> weekDatesState,  SectionState<ReminderEntity> remindersState,  ReminderEntity? upComingReminder,  ActionStatus actionStatus)  $default,) {final _that = this;
switch (_that) {
case _ReminderState():
return $default(_that.weekDatesState,_that.remindersState,_that.upComingReminder,_that.actionStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SectionState<DateTime> weekDatesState,  SectionState<ReminderEntity> remindersState,  ReminderEntity? upComingReminder,  ActionStatus actionStatus)?  $default,) {final _that = this;
switch (_that) {
case _ReminderState() when $default != null:
return $default(_that.weekDatesState,_that.remindersState,_that.upComingReminder,_that.actionStatus);case _:
  return null;

}
}

}

/// @nodoc


class _ReminderState implements ReminderState {
  const _ReminderState({required this.weekDatesState, required this.remindersState, this.upComingReminder, this.actionStatus = const ActionStatus.idle()});
  

@override final  SectionState<DateTime> weekDatesState;
@override final  SectionState<ReminderEntity> remindersState;
@override final  ReminderEntity? upComingReminder;
@override@JsonKey() final  ActionStatus actionStatus;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderStateCopyWith<_ReminderState> get copyWith => __$ReminderStateCopyWithImpl<_ReminderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderState&&(identical(other.weekDatesState, weekDatesState) || other.weekDatesState == weekDatesState)&&(identical(other.remindersState, remindersState) || other.remindersState == remindersState)&&(identical(other.upComingReminder, upComingReminder) || other.upComingReminder == upComingReminder)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus));
}


@override
int get hashCode => Object.hash(runtimeType,weekDatesState,remindersState,upComingReminder,actionStatus);

@override
String toString() {
  return 'ReminderState(weekDatesState: $weekDatesState, remindersState: $remindersState, upComingReminder: $upComingReminder, actionStatus: $actionStatus)';
}


}

/// @nodoc
abstract mixin class _$ReminderStateCopyWith<$Res> implements $ReminderStateCopyWith<$Res> {
  factory _$ReminderStateCopyWith(_ReminderState value, $Res Function(_ReminderState) _then) = __$ReminderStateCopyWithImpl;
@override @useResult
$Res call({
 SectionState<DateTime> weekDatesState, SectionState<ReminderEntity> remindersState, ReminderEntity? upComingReminder, ActionStatus actionStatus
});


@override $SectionStateCopyWith<DateTime, $Res> get weekDatesState;@override $SectionStateCopyWith<ReminderEntity, $Res> get remindersState;@override $ReminderEntityCopyWith<$Res>? get upComingReminder;@override $ActionStatusCopyWith<$Res> get actionStatus;

}
/// @nodoc
class __$ReminderStateCopyWithImpl<$Res>
    implements _$ReminderStateCopyWith<$Res> {
  __$ReminderStateCopyWithImpl(this._self, this._then);

  final _ReminderState _self;
  final $Res Function(_ReminderState) _then;

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weekDatesState = null,Object? remindersState = null,Object? upComingReminder = freezed,Object? actionStatus = null,}) {
  return _then(_ReminderState(
weekDatesState: null == weekDatesState ? _self.weekDatesState : weekDatesState // ignore: cast_nullable_to_non_nullable
as SectionState<DateTime>,remindersState: null == remindersState ? _self.remindersState : remindersState // ignore: cast_nullable_to_non_nullable
as SectionState<ReminderEntity>,upComingReminder: freezed == upComingReminder ? _self.upComingReminder : upComingReminder // ignore: cast_nullable_to_non_nullable
as ReminderEntity?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as ActionStatus,
  ));
}

/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionStateCopyWith<DateTime, $Res> get weekDatesState {
  
  return $SectionStateCopyWith<DateTime, $Res>(_self.weekDatesState, (value) {
    return _then(_self.copyWith(weekDatesState: value));
  });
}/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionStateCopyWith<ReminderEntity, $Res> get remindersState {
  
  return $SectionStateCopyWith<ReminderEntity, $Res>(_self.remindersState, (value) {
    return _then(_self.copyWith(remindersState: value));
  });
}/// Create a copy of ReminderState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReminderEntityCopyWith<$Res>? get upComingReminder {
    if (_self.upComingReminder == null) {
    return null;
  }

  return $ReminderEntityCopyWith<$Res>(_self.upComingReminder!, (value) {
    return _then(_self.copyWith(upComingReminder: value));
  });
}/// Create a copy of ReminderState
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
