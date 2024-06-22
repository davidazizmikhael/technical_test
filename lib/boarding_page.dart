import 'package:flutter/material.dart';
import 'package:technical_test/character_selection_screen.dart';
import 'package:technical_test/chat_screen.dart';
import 'package:technical_test/enum_onboarding_step.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({super.key, required this.title, required this.subtitle, required this.onboardingStep, required this.pageController});
  final String title;
  final String subtitle;
  final OnboardingStep onboardingStep;
  final PageController pageController;

  String _textStyle(OnboardingStep onboardingStep) {
    switch (onboardingStep) {
      case OnboardingStep.welcome:
      case OnboardingStep.finish:
        return "Get Started";
      default:
        return "Next";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: onboardingStep == OnboardingStep.characters ? MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          if (onboardingStep == OnboardingStep.characters) ...[
            CharacterSelectionScreen(pageController: pageController)
          ] else ...[
            ElevatedButton(
              onPressed: () {
                if (onboardingStep == OnboardingStep.finish) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatScreen()),
                  );
                } else {
                  pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                }
              },
              child: Text(_textStyle(onboardingStep)),
            )
          ]
        ],
      ),
    );
  }
}
