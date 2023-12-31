import 'package:final_project/ui/componant/component_bottom_sheet.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

import '../../globals.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key, this.height = 249, this.width = 327});

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(34),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: orangeColor.withOpacity(0.2),
              blurRadius: 7,
              spreadRadius: 1,
              offset: const Offset(0, 0),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Do you want suggestions for your specific ingredients?",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          OrangeButton(
            height: 39,
            width: 210,
            title: "start",
            onPressed: () {
              ingredientList.clear();
              showModalBottomSheet(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  showDragHandle: true,
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  builder: (context) => ComponentBottomSheet());
            },
          ),
        ],
      ),
    );
  }
}
