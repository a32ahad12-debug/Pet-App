import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/onBoarding/onboarding_screen.dart';
import 'screens/onBoarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}