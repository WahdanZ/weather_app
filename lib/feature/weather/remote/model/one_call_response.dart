import 'package:freezed_annotation/freezed_annotation.dart';

import 'current.dart';
import 'daily.dart';

part 'one_call_response.freezed.dart';
part 'one_call_response.g.dart';

@freezed
class OneCallResponse with _$OneCallResponse {
  factory OneCallResponse({
    required double lat,
    required double lon,
    required String timezone,
    required int timezone_offset,
    required Current current,
    required List<Daily> daily,
  }) = _OneCallResponse;

  factory OneCallResponse.fromJson(Map<String, dynamic> json) =>
      _$OneCallResponseFromJson(json);
}
