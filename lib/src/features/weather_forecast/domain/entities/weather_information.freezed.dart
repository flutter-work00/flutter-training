// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherInformation _$WeatherInformationFromJson(Map<String, dynamic> json) {
  return _WeatherInformation.fromJson(json);
}

/// @nodoc
mixin _$WeatherInformation {
  WeatherCondition? get weatherCondition => throw _privateConstructorUsedError;
  int? get maxTemperature => throw _privateConstructorUsedError;
  int? get minTemperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherInformationCopyWith<WeatherInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInformationCopyWith<$Res> {
  factory $WeatherInformationCopyWith(
          WeatherInformation value, $Res Function(WeatherInformation) then) =
      _$WeatherInformationCopyWithImpl<$Res, WeatherInformation>;
  @useResult
  $Res call(
      {WeatherCondition? weatherCondition,
      int? maxTemperature,
      int? minTemperature});
}

/// @nodoc
class _$WeatherInformationCopyWithImpl<$Res, $Val extends WeatherInformation>
    implements $WeatherInformationCopyWith<$Res> {
  _$WeatherInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherCondition = freezed,
    Object? maxTemperature = freezed,
    Object? minTemperature = freezed,
  }) {
    return _then(_value.copyWith(
      weatherCondition: freezed == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
      maxTemperature: freezed == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int?,
      minTemperature: freezed == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherInformationImplCopyWith<$Res>
    implements $WeatherInformationCopyWith<$Res> {
  factory _$$WeatherInformationImplCopyWith(_$WeatherInformationImpl value,
          $Res Function(_$WeatherInformationImpl) then) =
      __$$WeatherInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherCondition? weatherCondition,
      int? maxTemperature,
      int? minTemperature});
}

/// @nodoc
class __$$WeatherInformationImplCopyWithImpl<$Res>
    extends _$WeatherInformationCopyWithImpl<$Res, _$WeatherInformationImpl>
    implements _$$WeatherInformationImplCopyWith<$Res> {
  __$$WeatherInformationImplCopyWithImpl(_$WeatherInformationImpl _value,
      $Res Function(_$WeatherInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherCondition = freezed,
    Object? maxTemperature = freezed,
    Object? minTemperature = freezed,
  }) {
    return _then(_$WeatherInformationImpl(
      weatherCondition: freezed == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
      maxTemperature: freezed == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int?,
      minTemperature: freezed == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherInformationImpl implements _WeatherInformation {
  _$WeatherInformationImpl(
      {required this.weatherCondition,
      required this.maxTemperature,
      required this.minTemperature});

  factory _$WeatherInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherInformationImplFromJson(json);

  @override
  final WeatherCondition? weatherCondition;
  @override
  final int? maxTemperature;
  @override
  final int? minTemperature;

  @override
  String toString() {
    return 'WeatherInformation(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherInformationImpl &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, weatherCondition, maxTemperature, minTemperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherInformationImplCopyWith<_$WeatherInformationImpl> get copyWith =>
      __$$WeatherInformationImplCopyWithImpl<_$WeatherInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherInformationImplToJson(
      this,
    );
  }
}

abstract class _WeatherInformation implements WeatherInformation {
  factory _WeatherInformation(
      {required final WeatherCondition? weatherCondition,
      required final int? maxTemperature,
      required final int? minTemperature}) = _$WeatherInformationImpl;

  factory _WeatherInformation.fromJson(Map<String, dynamic> json) =
      _$WeatherInformationImpl.fromJson;

  @override
  WeatherCondition? get weatherCondition;
  @override
  int? get maxTemperature;
  @override
  int? get minTemperature;
  @override
  @JsonKey(ignore: true)
  _$$WeatherInformationImplCopyWith<_$WeatherInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
