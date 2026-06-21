import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/route_paths.dart';
import '../widgets/splash_image.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const Duration splashDuration = Duration(seconds: 2);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(SplashPage.splashDuration, _navigateToLogin);
  }

  void _navigateToLogin() {
    if (!mounted) {
      return;
    }
    context.go(RoutePaths.login);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashImage(),
    );
  }
}
