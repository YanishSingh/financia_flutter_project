import 'dart:async';
import 'package:financia/views/dashboard_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenViewModel {
  void navigateToHome(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
  }
}
