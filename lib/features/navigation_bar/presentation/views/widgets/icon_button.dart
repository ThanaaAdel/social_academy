import 'package:flutter/cupertino.dart';
import 'package:social_academy/core/utils/constants.dart';
import 'package:social_academy/core/utils/styles.dart';
import 'package:social_academy/features/navigation_bar/data/model/model.dart';
import 'package:social_academy/features/navigation_bar/presentation/views/widgets/custom_paint.dart';
int selectBtn = 0;
SizedBox iconBtn(int i) {
  bool isActive = selectBtn == i ? true : false;
  var height = isActive ? 60.0 : 0.0;
  var width = isActive ? 50.0 : 0.0;
  return SizedBox(
    width: 75.0,
    child: Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: AnimatedContainer(
            height: height,
            width: width,
            duration: const Duration(milliseconds: 600),
            child: isActive
                ? CustomPaint(
              painter: ButtonNotch(),
            )
                : const SizedBox(),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            navBtn[i].imagePath,
            color: isActive ? kPrimaryColor : black,
            scale: 2,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            navBtn[i].name,
            style: isActive ? bntText.copyWith(color: kPrimaryColor) : bntText,
          ),
        )
      ],
    ),
  );
}