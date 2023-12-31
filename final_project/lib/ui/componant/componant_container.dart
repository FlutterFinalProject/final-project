import 'dart:ui';
import 'package:final_project/globals.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/ingredient_model.dart';

class ComponentContainer extends StatefulWidget {
  const ComponentContainer({super.key, required this.ingredient});

  final Ingredient ingredient;

  @override
  State<ComponentContainer> createState() => ComponentContainerState();
}

class ComponentContainerState extends State<ComponentContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isSelected) {
          ingredientList.remove(widget.ingredient.name);
          isSelected = !isSelected;
          setState(() {});
          print(ingredientList.length);
        } else {
          ingredientList.add(widget.ingredient.name);
          isSelected = !isSelected;
          setState(() {});
          print(ingredientList.length);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: isSelected
                ? orangeColor
                : Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: orangeColor.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 0,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Row(
          children: [
            SizedBox(
              height: 29,
              width: 29,
              child: Image.network(widget.ingredient.ingrImg!),
            ),
            kHSpace4,
            Text(
              widget.ingredient.name!,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
