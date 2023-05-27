import 'package:flutter/material.dart';
import 'package:social_academy/features/Splash/presentation/views/splash_view.dart';
void main() {
  runApp(const MyApp());


  }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),

    );

  }
}