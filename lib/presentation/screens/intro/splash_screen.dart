import 'dart:async';
import 'package:diagnose_me/app/app_images.dart';
import 'package:diagnose_me/presentation/screens/choose/chose_screen.dart';
import 'package:diagnose_me/presentation/screens/intro/on_boarding.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const OnBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Image.asset(Assets.logo));
  }
}


