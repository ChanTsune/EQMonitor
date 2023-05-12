import 'package:freezed_annotation/freezed_annotation.dart';

part 'eew_hypocenter.freezed.dart';
part 'eew_hypocenter.g.dart';

@freezed
class EewHypocenter with _$EewHypocenter {
  const factory EewHypocenter({
    required double? latitude,
    required double? longitude,
    required String code,
    required String name,
  }) = _EewHypocenter;

  factory EewHypocenter.fromJson(Map<String, dynamic> json) =>
      _$EewHypocenterFromJson(json);
}
