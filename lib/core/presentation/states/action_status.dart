import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_status.freezed.dart';

@freezed
class ActionStatus with _$ActionStatus {
  const factory ActionStatus.idle() = _Idle;
  const factory ActionStatus.loading() = _Loading;
  const factory ActionStatus.success({required String message}) = _Success;
  const factory ActionStatus.failure({required String message}) = _Failure;
}
