import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RectangleTextNumberField extends StatelessWidget {
  const RectangleTextNumberField({
    super.key,
    this.num1Controller,
    this.num2Controller,
    this.num3Controller,
    this.num4Controller,
    this.num5Controller,
    this.num6Controller,
    this.height = 58,
    this.width = 40,
  });
  final TextEditingController? num1Controller;
  final TextEditingController? num2Controller;
  final TextEditingController? num3Controller;
  final TextEditingController? num4Controller;
  final TextEditingController? num5Controller;
  final TextEditingController? num6Controller;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: height,
              width: width,
              child: TextFormField(
                controller: num1Controller,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: const TextStyle(color: orangeColor),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: lightGrayColor),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: orangeColor),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: whiteColor,
                ),
              ),
            ),
            kHSpace8,
            SizedBox(
              height: height,
              width: width,
              child: TextFormField(
                controller: num2Controller,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: const TextStyle(color: orangeColor),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: lightGrayColor),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: orangeColor),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: whiteColor,
                ),
              ),
            ),
            kHSpace8,
            SizedBox(
              height: height,
              width: width,
              child: TextFormField(
                controller: num3Controller,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: const TextStyle(color: orangeColor),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: lightGrayColor),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: orangeColor),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: whiteColor,
                ),
              ),
            ),
            kHSpace8,
            SizedBox(
              height: height,
              width: width,
              child: TextFormField(
                controller: num4Controller,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: const TextStyle(color: orangeColor),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: lightGrayColor),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: orangeColor),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: whiteColor,
                ),
              ),
            ),
            kHSpace8,
            SizedBox(
              height: height,
              width: width,
              child: TextFormField(
                controller: num5Controller,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: const TextStyle(color: orangeColor),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: lightGrayColor),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: orangeColor),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: whiteColor,
                ),
              ),
            ),
            kHSpace8,
            SizedBox(
              height: height,
              width: width,
              child: TextFormField(
                controller: num6Controller,
                style: const TextStyle(color: orangeColor),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: lightGrayColor),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: orangeColor),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
