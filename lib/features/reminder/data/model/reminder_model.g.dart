// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReminderModel _$ReminderModelFromJson(Map<String, dynamic> json) =>
    _ReminderModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      note: json['note'] as String?,
      dateTimeEpoch: (json['dateTimeEpoch'] as num?)?.toInt(),
      reminderType: json['reminderType'] as String?,
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$ReminderModelToJson(_ReminderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'dateTimeEpoch': instance.dateTimeEpoch,
      'reminderType': instance.reminderType,
      'imagePath': instance.imagePath,
    };
