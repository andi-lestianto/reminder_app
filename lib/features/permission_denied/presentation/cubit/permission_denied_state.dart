part of 'permission_denied_cubit.dart';

@freezed
abstract class PermissionDeniedState with _$PermissionDeniedState {
  const factory PermissionDeniedState({bool? permissionGranted}) =
      _PermissionDeniedState;
}
