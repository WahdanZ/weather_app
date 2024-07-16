// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Temp _$TempFromJson(Map<String, dynamic> json) {
  return _Temp.fromJson(json);
}

/// @nodoc
mixin _$Temp {
  double get day => throw _privateConstructorUsedError;
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempCopyWith<Temp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempCopyWith<$Res> {
  factory $TempCopyWith(Temp value, $Res Function(Temp) then) =
      _$TempCopyWithImpl<$Res, Temp>;
  @useResult
  $Res call({double day, double min, double max});
}

/// @nodoc
class _$TempCopyWithImpl<$Res, $Val extends Temp>
    implements $TempCopyWith<$Res> {
  _$TempCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TempImplCopyWith<$Res> implements $TempCopyWith<$Res> {
  factory _$$TempImplCopyWith(
          _$TempImpl value, $Res Function(_$TempImpl) then) =
      __$$TempImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double day, double min, double max});
}

/// @nodoc
class __$$TempImplCopyWithImpl<$Res>
    extends _$TempCopyWithImpl<$Res, _$TempImpl>
    implements _$$TempImplCopyWith<$Res> {
  __$$TempImplCopyWithImpl(_$TempImpl _value, $Res Function(_$TempImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$TempImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TempImpl implements _Temp {
  _$TempImpl({required this.day, required this.min, required this.max});

  factory _$TempImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempImplFromJson(json);

  @override
  final double day;
  @override
  final double min;
  @override
  final double max;

  @override
  String toString() {
    return 'Temp(day: $day, min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, min, max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TempImplCopyWith<_$TempImpl> get copyWith =>
      __$$TempImplCopyWithImpl<_$TempImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TempImplToJson(
      this,
    );
  }
}

abstract class _Temp implements Temp {
  factory _Temp(
      {required final double day,
      required final double min,
      required final double max}) = _$TempImpl;

  factory _Temp.fromJson(Map<String, dynamic> json) = _$TempImpl.fromJson;

  @override
  double get day;
  @override
  double get min;
  @override
  double get max;
  @override
  @JsonKey(ignore: true)
  _$$TempImplCopyWith<_$TempImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
