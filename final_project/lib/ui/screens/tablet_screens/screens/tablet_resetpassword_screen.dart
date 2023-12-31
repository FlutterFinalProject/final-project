import 'package:final_project/ui/componant/coustom_textwithsubtext.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:flutter/material.dart';

class TabletResetPassword extends StatelessWidget {
  const TabletResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          const SignInAppbar(),
          const SizedBox(
            height: 100,
          ),
          const TextWithSubText(
            title1: "Resset Password",
            title2:
                "Please enter your email address to request a password reset",
          ),
          const TextFieldWidget(
            textfontsize: 30,
            width: 900,
            hintText: "Enter your email",
            label: "",
          ),
          const SizedBox(
            height: 30,
          ),
          OrangeButton(
            title: "Send new password",
            width: 700,
            height: 57,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
