import 'package:flutter/material.dart';
import 'package:social_academy/core/utils/constants.dart';

class PageContainer extends StatelessWidget {
  final Widget child;
  const PageContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kPrimaryColor,
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            child: child,
          ),
        ));
  }
}
