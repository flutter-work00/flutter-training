import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlutterSvgService {
  const FlutterSvgService._();

  static Widget fetchSvgImage({
    required String assetName,
    required String semanticsLabel,
  }) {
    return SvgPicture.asset(assetName, semanticsLabel: semanticsLabel);
  }
}
