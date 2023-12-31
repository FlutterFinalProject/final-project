import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard(
      {super.key,
      this.onPressedFavoriteIcone,
      this.foodName = 'Bruschetta',
      this.description = 'toppings of tomato',
      this.components = "CHEESE",
      this.foodImage = "assets/images/bf3.jpg"});
  final Function()? onPressedFavoriteIcone;
  final String foodName;
  final String description;
  final String components;
  final String foodImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 272,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 7,
              spreadRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            SizedBox(
              height: 166,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Image.asset(
                    foodImage,
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                height: 38,
                width: 38,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7,
                        spreadRadius: 0,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.favorite,
                    color: whiteColor,
                    size: 22,
                  ),
                  onPressed: onPressedFavoriteIcone,
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodName,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                kVSpace4,
                Text(
                  description,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                kVSpace8,
                Container(
                  alignment: Alignment.center,
                  height: 27,
                  width: 67,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    components,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.background),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
