import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TabletPage2 extends StatelessWidget {
  const TabletPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Center(
              child: Lottie.network(
                  "https://lottie.host/e941e07b-329a-4686-94cc-6880a404ccad/Mv0e2BD3rZ.json",
                  height: 400),
            ),
            kVSpace16,
            const Center(
              child: Text(
                "Browse your menu and order directly",
                style: TextStyle(fontSize: 38),
                textAlign: TextAlign.center,
              ),
            ),
            kVSpace16,
            const Text(
              "Our app can send you everywhere, even space. For only \$2.99 per month",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w400, color: grayColor),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}