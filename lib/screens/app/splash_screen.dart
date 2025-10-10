import 'dart:async';

import 'package:app_artwork/logo/gsmlg_dev.dart';
import 'package:flutter/material.dart';
import 'package:semaphore_client/screens/home/home_screen.dart';
import 'package:go_router/go_router.dart';
class SplashScreen extends StatelessWidget {
  static const name = 'Splash Screen';
  static const path = '/';
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double w = screenWidth;
    if (screenHeight < screenWidth) {
      w = screenHeight;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(milliseconds: 1_000), () {
        context.goNamed(HomeScreen.name);
      });
    });
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SizedBox(
          width: w * 0.618,
          height: w * 0.618,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Center(child: LogoGSMLGDEV()),
          ),
        ),
      ),
    );
  }
}
