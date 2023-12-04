import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T, R> with _$Result<T, R> {
  const Result._();
  const factory Result.success({required T value}) = Success<T, R>;
  const factory Result.failure({required R exception}) = Failure<T, R>;

  T? get valueOrNull => when(
        success: (value) => value,
        failure: (_) => null,
      );

  R? get exceptionOrNull => when(
        success: (_) => null,
        failure: (exception) => exception,
      );

  dynamic get unwrap => switch (this) {
        Success() => (this as Success).value,
        Failure() => (this as Failure).exception,
        Result<T, R>() => null,
      };
}
