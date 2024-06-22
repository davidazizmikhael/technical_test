import 'package:flutter/material.dart';
import 'package:technical_test/widgets/onboarding_widget.dart';
import 'package:technical_test/utils/enum_onboarding_step.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ...List.generate(
            OnboardingStep.values.length,
            (index) => OnBoardingWidget(
              title: OnboardingStep.values[index].title,
              subtitle: OnboardingStep.values[index].subtitle,
              onboardingStep: OnboardingStep.values[index],
              pageController: _pageController,
            ),
          )
        ],
      ),
    );
  }
}
