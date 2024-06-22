import 'package:flutter/material.dart';

class CharacterSelectionScreen extends StatelessWidget {
  final List<String> characters = ["Character 1", "Character 2", "Character 3", "Character 4"];

  CharacterSelectionScreen({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
          },
          child: Card(
            child: Center(
              child: Text(
                characters[index],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      },
    );
  }
}
