enum OnboardingStep {
  welcome,
  name,
  pronoun,
  dateOfBirth,
  interests,
  characters,
  characterName,
  age,
  personality,
  finish,
}

extension OnboardingStepExtension on OnboardingStep {
  String get title {
    switch (this) {
      case OnboardingStep.welcome:
        return "Welcome to Genesia Clone";
      case OnboardingStep.name:
        return "Enter your name";
      case OnboardingStep.pronoun:
        return "Pronoun";
      case OnboardingStep.dateOfBirth:
        return "Date of Birth";
      case OnboardingStep.interests:
        return "Interests";
      case OnboardingStep.characters:
        return "Choose Your Character";
      case OnboardingStep.characterName:
        return "Character Name";
      case OnboardingStep.age:
        return "Character age";
      case OnboardingStep.personality:
        return "Personality";
      case OnboardingStep.finish:
        return "Start Chatting";
    }
  }

  String get subtitle {
    switch (this) {
      case OnboardingStep.welcome:
        return "This is the first onboarding step";
      case OnboardingStep.name:
        return "Please enter your name";
      case OnboardingStep.pronoun:
        return "Please enter your pronoun";
      case OnboardingStep.dateOfBirth:
        return "Please enter your date of birth";
      case OnboardingStep.interests:
        return "Please enter your interests";
      case OnboardingStep.characters:
        return "You can choose from 4 different characters";
      case OnboardingStep.characterName:
        return "Please enter your character name";
      case OnboardingStep.age:
        return "Please enter your character age";
      case OnboardingStep.personality:
        return "Please enter your personality";
      case OnboardingStep.finish:
        return "Enjoy chatting with your chosen character";
    }
  }
}
