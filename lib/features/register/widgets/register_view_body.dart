
import 'package:flutter/material.dart';
import 'package:social_academy/core/utils/constants.dart';
import 'package:social_academy/core/utils/gaps.dart';
import 'package:social_academy/core/utils/mediaquery_sizes.dart';
import 'package:social_academy/features/register/widgets/register_form_decoration.dart';
import 'package:social_academy/features/register/widgets/register_view_form.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_circle_clipper.dart';
import '../../login/presentation/login_screen.dart';
class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Stack(
        children: [
          ClipPath(
            clipper: RoundedClipper(),
            child: Container(
              color: kPrimaryColor,
              height: SizeConfig.screenHeight! * 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: SizeConfig.screenHeight! * 0.77,
                    width: SizeConfig.screenWidth! * 0.85,
                    decoration: FormDecoration(),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: RegisterViewForm(),
                    ),
                  ),
                ),
               Gaps.vGap20,
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                         "aready have account",
                          style: Styles.textStyle20
                              .copyWith(color: kPrimaryColor, fontSize: 15),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const LoginScreen();
                            }));
                          },
                          child: Text(
                            "login",
                            style: Styles.textStyle20.copyWith(
                                color: kTextColor,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Image.asset(
                "assets/images/كتابك.png",
                height: 90,
                width: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
