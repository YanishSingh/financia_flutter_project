import 'package:flutter/material.dart';
import '../viewmodels/splash_screen_viewmodel.dart';
import '../widgets/animated_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashScreenViewModel _viewModel = SplashScreenViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.navigateToHome(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedLogo(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
