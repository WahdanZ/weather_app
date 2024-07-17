import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp.freezed.dart';
part 'temp.g.dart';

@freezed
class Temp with _$Temp {
  factory Temp({
    required double day,
    required double min,
    required double max,
  }) = _Temp;

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
}
