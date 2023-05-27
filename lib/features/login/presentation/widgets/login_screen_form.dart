
import 'package:flutter/material.dart';
import 'package:social_academy/core/utils/constants.dart';
import 'package:social_academy/core/utils/gaps.dart';
import 'package:social_academy/core/widgets/custom_login_text_field.dart';
import '../../../../../core/widgets/custom_button.dart';


class LoginViewForm extends StatefulWidget {
  const LoginViewForm({super.key});

  @override
  State<LoginViewForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<LoginViewForm> {
  @override
  Widget build(BuildContext context) {
    // late AppLocalizations locale;
    // locale = AppLocalizations.of(context)!;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text("login",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 25,
                fontWeight: FontWeight.w900),
          ),
        ),
        Gaps.hGap20,
        Column(
          children: const [
            Gaps.hGap50,
            Padding(
              padding: EdgeInsets.only(right: 0.0, left: 0),
              child: CustomLoginTextField(
                stringInTextField: "your Email"
                // "locale.translate('phone')!"
                ,
                obscureText: true,
                textInputType: TextInputType.text,
              ),
            ),
            Gaps.vGap20,
            Padding(
              padding: EdgeInsets.only(right: 0.0, left: 0),
              child: CustomLoginTextField(
                stringInTextField: "your password"
                // "locale.translate('phone')!"
                ,
                obscureText: true,
                textInputType: TextInputType.text,
              ),
            ),
          ],
        ),
        Gaps.vGap30,
        CustomButton(
          buttonText:"login"
          ,
          buttonTapHandler: () {
            Navigator.pushNamed(context, kVerificationScreen);
          },
          screenWidth: MediaQuery.of(context).size.width * .45,
        ),





      ],
    );
  }
}
