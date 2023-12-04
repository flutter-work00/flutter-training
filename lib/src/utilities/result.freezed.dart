// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T, R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(R exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(R exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(R exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, R> value) success,
    required TResult Function(Failure<T, R> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T, R> value)? success,
    TResult? Function(Failure<T, R> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, R> value)? success,
    TResult Function(Failure<T, R> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, R, $Res> {
  factory $ResultCopyWith(
          Result<T, R> value, $Res Function(Result<T, R>) then) =
      _$ResultCopyWithImpl<T, R, $Res, Result<T, R>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, R, $Res, $Val extends Result<T, R>>
    implements $ResultCopyWith<T, R, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, R, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T, R> value, $Res Function(_$SuccessImpl<T, R>) then) =
      __$$SuccessImplCopyWithImpl<T, R, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, R, $Res>
    extends _$ResultCopyWithImpl<T, R, $Res, _$SuccessImpl<T, R>>
    implements _$$SuccessImplCopyWith<T, R, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T, R> _value, $Res Function(_$SuccessImpl<T, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$SuccessImpl<T, R>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T, R> extends Success<T, R> {
  const _$SuccessImpl({required this.value}) : super._();

  @override
  final T value;

  @override
  String toString() {
    return 'Result<$T, $R>.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T, R> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, R, _$SuccessImpl<T, R>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, R, _$SuccessImpl<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(R exception) failure,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(R exception)? failure,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(R exception)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, R> value) success,
    required TResult Function(Failure<T, R> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T, R> value)? success,
    TResult? Function(Failure<T, R> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, R> value)? success,
    TResult Function(Failure<T, R> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T, R> extends Result<T, R> {
  const factory Success({required final T value}) = _$SuccessImpl<T, R>;
  const Success._() : super._();

  T get value;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, R, _$SuccessImpl<T, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, R, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T, R> value, $Res Function(_$FailureImpl<T, R>) then) =
      __$$FailureImplCopyWithImpl<T, R, $Res>;
  @useResult
  $Res call({R exception});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, R, $Res>
    extends _$ResultCopyWithImpl<T, R, $Res, _$FailureImpl<T, R>>
    implements _$$FailureImplCopyWith<T, R, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T, R> _value, $Res Function(_$FailureImpl<T, R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$FailureImpl<T, R>(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$FailureImpl<T, R> extends Failure<T, R> {
  const _$FailureImpl({required this.exception}) : super._();

  @override
  final R exception;

  @override
  String toString() {
    return 'Result<$T, $R>.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T, R> &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, R, _$FailureImpl<T, R>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, R, _$FailureImpl<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(R exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T value)? success,
    TResult? Function(R exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(R exception)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, R> value) success,
    required TResult Function(Failure<T, R> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T, R> value)? success,
    TResult? Function(Failure<T, R> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, R> value)? success,
    TResult Function(Failure<T, R> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T, R> extends Result<T, R> {
  const factory Failure({required final R exception}) = _$FailureImpl<T, R>;
  const Failure._() : super._();

  R get exception;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<T, R, _$FailureImpl<T, R>> get copyWith =>
      throw _privateConstructorUsedError;
}
