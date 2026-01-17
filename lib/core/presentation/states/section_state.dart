import 'package:freezed_annotation/freezed_annotation.dart';
part 'section_state.freezed.dart';

@freezed
abstract class SectionState<T> with _$SectionState<T> {
  const factory SectionState.initial() = _Initial;
  const factory SectionState.loading() = _Loading;
  const factory SectionState.loaded({required List<T> data}) = _Loaded<T>;
  const factory SectionState.error(String message) = _Error;
}
