import 'package:flutter/material.dart';
import 'views/splash_screen.dart';
import 'views/onboarding_screen.dart';

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
        '/': (context) => const SplashScreen(), // Splash screen
        '/onboarding': (context) => OnboardingScreen(), // Onboarding screen
        '/signup': (context) => Scaffold(
            body: Center(
                child:
                    Text('Sign Up Screen'))), // Placeholder for Sign Up screen
        '/login': (context) => Scaffold(
            body: Center(
                child: Text('Login Screen'))), // Placeholder for Login screen
      },
    );
  }
}
