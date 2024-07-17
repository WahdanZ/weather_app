// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_call_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OneCallResponse _$OneCallResponseFromJson(Map<String, dynamic> json) {
  return _OneCallResponse.fromJson(json);
}

/// @nodoc
mixin _$OneCallResponse {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone_offset')
  int get timezoneOffset => throw _privateConstructorUsedError;
  Current get current => throw _privateConstructorUsedError;
  List<Daily> get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneCallResponseCopyWith<OneCallResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneCallResponseCopyWith<$Res> {
  factory $OneCallResponseCopyWith(
          OneCallResponse value, $Res Function(OneCallResponse) then) =
      _$OneCallResponseCopyWithImpl<$Res, OneCallResponse>;
  @useResult
  $Res call(
      {double lat,
      double lon,
      String timezone,
      @JsonKey(name: 'timezone_offset') int timezoneOffset,
      Current current,
      List<Daily> daily});

  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class _$OneCallResponseCopyWithImpl<$Res, $Val extends OneCallResponse>
    implements $OneCallResponseCopyWith<$Res> {
  _$OneCallResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? timezone = null,
    Object? timezoneOffset = null,
    Object? current = null,
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: null == timezoneOffset
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Daily>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OneCallResponseImplCopyWith<$Res>
    implements $OneCallResponseCopyWith<$Res> {
  factory _$$OneCallResponseImplCopyWith(_$OneCallResponseImpl value,
          $Res Function(_$OneCallResponseImpl) then) =
      __$$OneCallResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lat,
      double lon,
      String timezone,
      @JsonKey(name: 'timezone_offset') int timezoneOffset,
      Current current,
      List<Daily> daily});

  @override
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class __$$OneCallResponseImplCopyWithImpl<$Res>
    extends _$OneCallResponseCopyWithImpl<$Res, _$OneCallResponseImpl>
    implements _$$OneCallResponseImplCopyWith<$Res> {
  __$$OneCallResponseImplCopyWithImpl(
      _$OneCallResponseImpl _value, $Res Function(_$OneCallResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? timezone = null,
    Object? timezoneOffset = null,
    Object? current = null,
    Object? daily = null,
  }) {
    return _then(_$OneCallResponseImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: null == timezoneOffset
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      daily: null == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Daily>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneCallResponseImpl implements _OneCallResponse {
  _$OneCallResponseImpl(
      {required this.lat,
      required this.lon,
      required this.timezone,
      @JsonKey(name: 'timezone_offset') required this.timezoneOffset,
      required this.current,
      required final List<Daily> daily})
      : _daily = daily;

  factory _$OneCallResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneCallResponseImplFromJson(json);

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String timezone;
  @override
  @JsonKey(name: 'timezone_offset')
  final int timezoneOffset;
  @override
  final Current current;
  final List<Daily> _daily;
  @override
  List<Daily> get daily {
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daily);
  }

  @override
  String toString() {
    return 'OneCallResponse(lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset, current: $current, daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneCallResponseImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneOffset, timezoneOffset) ||
                other.timezoneOffset == timezoneOffset) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._daily, _daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, timezone,
      timezoneOffset, current, const DeepCollectionEquality().hash(_daily));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneCallResponseImplCopyWith<_$OneCallResponseImpl> get copyWith =>
      __$$OneCallResponseImplCopyWithImpl<_$OneCallResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneCallResponseImplToJson(
      this,
    );
  }
}

abstract class _OneCallResponse implements OneCallResponse {
  factory _OneCallResponse(
      {required final double lat,
      required final double lon,
      required final String timezone,
      @JsonKey(name: 'timezone_offset') required final int timezoneOffset,
      required final Current current,
      required final List<Daily> daily}) = _$OneCallResponseImpl;

  factory _OneCallResponse.fromJson(Map<String, dynamic> json) =
      _$OneCallResponseImpl.fromJson;

  @override
  double get lat;
  @override
  double get lon;
  @override
  String get timezone;
  @override
  @JsonKey(name: 'timezone_offset')
  int get timezoneOffset;
  @override
  Current get current;
  @override
  List<Daily> get daily;
  @override
  @JsonKey(ignore: true)
  _$$OneCallResponseImplCopyWith<_$OneCallResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
