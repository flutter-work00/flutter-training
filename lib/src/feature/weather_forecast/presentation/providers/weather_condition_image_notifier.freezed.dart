// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_condition_image_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherConditionImageState {
  Widget? get weatherConditionImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherConditionImageStateCopyWith<WeatherConditionImageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionImageStateCopyWith<$Res> {
  factory $WeatherConditionImageStateCopyWith(WeatherConditionImageState value,
          $Res Function(WeatherConditionImageState) then) =
      _$WeatherConditionImageStateCopyWithImpl<$Res,
          WeatherConditionImageState>;
  @useResult
  $Res call({Widget? weatherConditionImage});
}

/// @nodoc
class _$WeatherConditionImageStateCopyWithImpl<$Res,
        $Val extends WeatherConditionImageState>
    implements $WeatherConditionImageStateCopyWith<$Res> {
  _$WeatherConditionImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherConditionImage = freezed,
  }) {
    return _then(_value.copyWith(
      weatherConditionImage: freezed == weatherConditionImage
          ? _value.weatherConditionImage
          : weatherConditionImage // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherConditionImageStateImplCopyWith<$Res>
    implements $WeatherConditionImageStateCopyWith<$Res> {
  factory _$$WeatherConditionImageStateImplCopyWith(
          _$WeatherConditionImageStateImpl value,
          $Res Function(_$WeatherConditionImageStateImpl) then) =
      __$$WeatherConditionImageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Widget? weatherConditionImage});
}

/// @nodoc
class __$$WeatherConditionImageStateImplCopyWithImpl<$Res>
    extends _$WeatherConditionImageStateCopyWithImpl<$Res,
        _$WeatherConditionImageStateImpl>
    implements _$$WeatherConditionImageStateImplCopyWith<$Res> {
  __$$WeatherConditionImageStateImplCopyWithImpl(
      _$WeatherConditionImageStateImpl _value,
      $Res Function(_$WeatherConditionImageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherConditionImage = freezed,
  }) {
    return _then(_$WeatherConditionImageStateImpl(
      weatherConditionImage: freezed == weatherConditionImage
          ? _value.weatherConditionImage
          : weatherConditionImage // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$WeatherConditionImageStateImpl extends _WeatherConditionImageState {
  const _$WeatherConditionImageStateImpl({required this.weatherConditionImage})
      : super._();

  @override
  final Widget? weatherConditionImage;

  @override
  String toString() {
    return 'WeatherConditionImageState(weatherConditionImage: $weatherConditionImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionImageStateImpl &&
            (identical(other.weatherConditionImage, weatherConditionImage) ||
                other.weatherConditionImage == weatherConditionImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherConditionImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionImageStateImplCopyWith<_$WeatherConditionImageStateImpl>
      get copyWith => __$$WeatherConditionImageStateImplCopyWithImpl<
          _$WeatherConditionImageStateImpl>(this, _$identity);
}

abstract class _WeatherConditionImageState extends WeatherConditionImageState {
  const factory _WeatherConditionImageState(
          {required final Widget? weatherConditionImage}) =
      _$WeatherConditionImageStateImpl;
  const _WeatherConditionImageState._() : super._();

  @override
  Widget? get weatherConditionImage;
  @override
  @JsonKey(ignore: true)
  _$$WeatherConditionImageStateImplCopyWith<_$WeatherConditionImageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
