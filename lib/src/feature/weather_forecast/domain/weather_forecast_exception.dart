import 'package:flutter_training/src/utility/constant/constant.dart';
import 'package:flutter_training/src/utility/exceptions/exceptions.dart';

class WeatherForecastException implements AppException {
  WeatherForecastException({required this.code, required this.message});
  @override
  final String code;
  @override
  final String message;
}

class FetchWeatherConditionException extends WeatherForecastException {
  FetchWeatherConditionException()
      : super(
          code: 'fetch-weather-condition-exception',
          message: ErrorMessageConst.fetchWeatherCondition,
        );
}

// extension FirebaseAuthExceptionExtension on FirebaseAuthException {
//   AppFirebaseAuthException onFirebaseAuthException() {
//     if (code == EmailAlreadyInUseException().code) {
//       return EmailAlreadyInUseException();
//     } else if (code == InvalidEmailException().code) {
//       return InvalidEmailException();
//     } else if (code == RequiresRecentLoginException().code) {
//       return RequiresRecentLoginException();
//     } else if (code == TooManyRequestsException().code) {
//       return TooManyRequestsException();
//     } else if (code == UserDisabledException().code) {
//       return UserDisabledException();
//     } else if (code == UserNotFoundException().code) {
//       return UserNotFoundException();
//     } else if (code == WeakPasswordException().code) {
//       return WeakPasswordException();
//     } else if (code == WrongPasswordException().code) {
//       return WrongPasswordException();
//     } else {
//       return AuthenticationException();
//     }
//   }
// }
