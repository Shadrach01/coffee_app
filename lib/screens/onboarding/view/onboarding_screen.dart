import 'package:coffee_app/screens/onboarding/widgets/onboarding_widgets.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingWidgets(),
    );
  }
}
