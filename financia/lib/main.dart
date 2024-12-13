import 'package:flutter/material.dart';
import 'views/splash_screen.dart';
import 'views/onboarding_screen.dart';
import 'views/login_screen.dart';
import 'views/signup_screen.dart';
import 'views/dashboard_screen.dart';

void main() {
  runApp(const FinancyApp());
}

class FinancyApp extends StatelessWidget {
  const FinancyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Financy',
      theme: ThemeData(
        primarySwatch:
            Colors.purple, // Updated primary color to match your design
      ),
      // Define routes for navigation
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
