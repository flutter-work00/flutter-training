// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_information_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherInformationState {
  Widget? get weatherConditionImage => throw _privateConstructorUsedError;
  String? get maxTemperature => throw _privateConstructorUsedError;
  String? get minTemperature => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherInformationStateCopyWith<WeatherInformationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInformationStateCopyWith<$Res> {
  factory $WeatherInformationStateCopyWith(WeatherInformationState value,
          $Res Function(WeatherInformationState) then) =
      _$WeatherInformationStateCopyWithImpl<$Res, WeatherInformationState>;
  @useResult
  $Res call(
      {Widget? weatherConditionImage,
      String? maxTemperature,
      String? minTemperature});
}

/// @nodoc
class _$WeatherInformationStateCopyWithImpl<$Res,
        $Val extends WeatherInformationState>
    implements $WeatherInformationStateCopyWith<$Res> {
  _$WeatherInformationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherConditionImage = freezed,
    Object? maxTemperature = freezed,
    Object? minTemperature = freezed,
  }) {
    return _then(_value.copyWith(
      weatherConditionImage: freezed == weatherConditionImage
          ? _value.weatherConditionImage
          : weatherConditionImage // ignore: cast_nullable_to_non_nullable
              as Widget?,
      maxTemperature: freezed == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as String?,
      minTemperature: freezed == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherInformationStateImplCopyWith<$Res>
    implements $WeatherInformationStateCopyWith<$Res> {
  factory _$$WeatherInformationStateImplCopyWith(
          _$WeatherInformationStateImpl value,
          $Res Function(_$WeatherInformationStateImpl) then) =
      __$$WeatherInformationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Widget? weatherConditionImage,
      String? maxTemperature,
      String? minTemperature});
}

/// @nodoc
class __$$WeatherInformationStateImplCopyWithImpl<$Res>
    extends _$WeatherInformationStateCopyWithImpl<$Res,
        _$WeatherInformationStateImpl>
    implements _$$WeatherInformationStateImplCopyWith<$Res> {
  __$$WeatherInformationStateImplCopyWithImpl(
      _$WeatherInformationStateImpl _value,
      $Res Function(_$WeatherInformationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherConditionImage = freezed,
    Object? maxTemperature = freezed,
    Object? minTemperature = freezed,
  }) {
    return _then(_$WeatherInformationStateImpl(
      weatherConditionImage: freezed == weatherConditionImage
          ? _value.weatherConditionImage
          : weatherConditionImage // ignore: cast_nullable_to_non_nullable
              as Widget?,
      maxTemperature: freezed == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as String?,
      minTemperature: freezed == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WeatherInformationStateImpl extends _WeatherInformationState {
  const _$WeatherInformationStateImpl(
      {required this.weatherConditionImage,
      required this.maxTemperature,
      required this.minTemperature})
      : super._();

  @override
  final Widget? weatherConditionImage;
  @override
  final String? maxTemperature;
  @override
  final String? minTemperature;

  @override
  String toString() {
    return 'WeatherInformationState(weatherConditionImage: $weatherConditionImage, maxTemperature: $maxTemperature, minTemperature: $minTemperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherInformationStateImpl &&
            (identical(other.weatherConditionImage, weatherConditionImage) ||
                other.weatherConditionImage == weatherConditionImage) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, weatherConditionImage, maxTemperature, minTemperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherInformationStateImplCopyWith<_$WeatherInformationStateImpl>
      get copyWith => __$$WeatherInformationStateImplCopyWithImpl<
          _$WeatherInformationStateImpl>(this, _$identity);
}

abstract class _WeatherInformationState extends WeatherInformationState {
  const factory _WeatherInformationState(
      {required final Widget? weatherConditionImage,
      required final String? maxTemperature,
      required final String? minTemperature}) = _$WeatherInformationStateImpl;
  const _WeatherInformationState._() : super._();

  @override
  Widget? get weatherConditionImage;
  @override
  String? get maxTemperature;
  @override
  String? get minTemperature;
  @override
  @JsonKey(ignore: true)
  _$$WeatherInformationStateImplCopyWith<_$WeatherInformationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
