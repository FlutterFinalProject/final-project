import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/componant/coustom_rectanglefield.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/coustom_textwithsubtext.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TabletOTPScreen extends StatelessWidget {
  TabletOTPScreen({
    super.key,
    required this.userEmail,
  });
  final String userEmail;
  final TextEditingController? num1Controller = TextEditingController();
  final TextEditingController? num2Controller = TextEditingController();
  final TextEditingController? num3Controller = TextEditingController();
  final TextEditingController? num4Controller = TextEditingController();
  final TextEditingController? num5Controller = TextEditingController();
  final TextEditingController? num6Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          const SignInAppbar(),
          const SizedBox(
            height: 228,
          ),
          TextWithSubText(
              title2: "Please type the verification code sent to $userEmail"),
          const SizedBox(
            height: 50,
          ),
          RectangleTextNumberField(
              width: 90,
              height: 90,
              num1Controller: num1Controller,
              num2Controller: num2Controller,
              num3Controller: num3Controller,
              num4Controller: num4Controller,
              num5Controller: num5Controller,
              num6Controller: num6Controller),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 300,
          ),
          OrangeButton(
            width: 700,
            fontsize: 20,
            title: "verfy",
            onPressed: () async {},
          ),
          kVSpace24,
          TextWithTextButton(
            fontsize: 30,
            fontsizebutton: 30,
            buttonTitle: 'Please resend',
            textColor: Theme.of(context).colorScheme.primary,
            text: 'I don’t recevie a code!',
            onTap: () async {
              await SupabaseInitializer()
                  .supabaseClient
                  .auth
                  .resend(type: OtpType.signup, email: userEmail);
            },
          ),
        ],
      ),
    );
  }
}
