import 'package:flutter/material.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({super.key});

  static const String _lightAsset = 'assets/images/splash_light.png';
  static const String _darkAsset = 'assets/images/splash_dark.png';

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Image.asset(
      isDark ? _darkAsset : _lightAsset,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
