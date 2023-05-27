
import 'package:flutter/material.dart';
import 'package:social_academy/core/utils/constants.dart';
import 'package:social_academy/core/utils/gaps.dart';
import 'package:social_academy/core/utils/mediaquery_sizes.dart';
import 'package:social_academy/core/widgets/custom_circle_clipper.dart';
import 'package:social_academy/core/widgets/custom_elevated_container.dart';
import 'package:social_academy/features/register/register_screen.dart';
import 'login_screen_form.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    // late AppLocalizations locale;
    // locale = AppLocalizations.of(context)!;
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: RoundedClipper(),
            child: Container(
              color: kPrimaryColor,
              height: SizeConfig.screenHeight! * 0.45,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedContainer(
                  containerChild: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: LoginViewForm(),
                  ),
                  containerHeight: SizeConfig.screenHeight! * 0.62,
                  containerWidth: SizeConfig.screenWidth! * 0.85,
                ),
                Gaps.hGap20,
                Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "do not have an account?",
                        style:
                            TextStyle(color: kPrimaryColor, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const RegisterView()),
                          );
                        },
                        child: Column(
                          children: const [
                            Text("create account",
                              style: TextStyle(
                                  color: kSecondaryColor,
                                  fontSize: 20,
                                  decorationThickness: 2,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Image.asset(
                "assets/images/كتابك.png",
                height: 130,
                width: 200,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
