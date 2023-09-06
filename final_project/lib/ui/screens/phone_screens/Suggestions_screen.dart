import 'package:final_project/ui/componant/main_appbar.dart';
import 'package:final_project/ui/componant/suggestion_card.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MainAppbar(),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return const SuggestionCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
