import 'package:flutter_training/src/utility/constant/constant.dart';

Never throwFormatException({required String keyName}) {
  final message = keyName + ExceptionConst.invalidValueMessage;
  throw FormatException(message);
}
