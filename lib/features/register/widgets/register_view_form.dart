
import 'package:flutter/material.dart';
import 'package:social_academy/core/utils/gaps.dart';
import 'package:social_academy/core/utils/mediaquery_sizes.dart';
import 'package:social_academy/core/widgets/custom_button.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_login_text_field.dart';
import '../../../core/utils/constants.dart';
import 'gender_selection.dart';

class RegisterViewForm extends StatefulWidget {
  const RegisterViewForm({super.key});

  @override
  State<RegisterViewForm> createState() => _RegisterViewFormState();
}

class _RegisterViewFormState extends State<RegisterViewForm> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        const Text(
         "create account",
          style: TextStyle(
              color: kPrimaryColor,
              fontSize: 17,
              fontWeight: FontWeight.w700),
        ),
        Gaps.vGap30,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             CustomLoginTextField(
                textInputType: TextInputType.text,
                obscureText: false,
                stringInTextField: "name"),
             CustomLoginTextField(
                textInputType: TextInputType.number,
                obscureText: false,
                stringInTextField:"id academy"),
             CustomLoginTextField(
                textInputType: TextInputType.number,
                obscureText: false,
                stringInTextField: "academy team"),
             CustomLoginTextField(
                textInputType: TextInputType.emailAddress,
                obscureText: false,
                stringInTextField: "email"),
            CustomLoginTextField(
                textInputType: TextInputType.visiblePassword,
                obscureText: false,
                stringInTextField: "password"),
            Gaps.vGap10,
            GenderSelection(),
          ],
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        CustomButton(
          buttonText: "create account",
          buttonTapHandler: () {
            Navigator.pushNamed(context, kVerificationScreen);
          },
          screenWidth: 190.0,
        ),


      ],
    );
  }
}
