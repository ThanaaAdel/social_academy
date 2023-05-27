import 'package:flutter/material.dart';
import 'package:social_academy/core/utils/constants.dart';
import 'package:social_academy/core/utils/gaps.dart';

class AppbarWidget extends StatelessWidget {
  final String text;
  const AppbarWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
        Gaps.hGap5,
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.message),
        ),
        Gaps.hGap5,
      ],
      title: Text(
        text,
      ),
    );
  }
}
