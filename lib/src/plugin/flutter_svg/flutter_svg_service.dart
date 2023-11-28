import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlutterSvgService {
  const FlutterSvgService._();

  static Widget fetchSvgImage({
    required String assetPath,
    required String semanticsLabel,
  }) {
    return SvgPicture.asset(assetPath, semanticsLabel: semanticsLabel);
  }
}
