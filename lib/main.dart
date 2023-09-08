import 'package:diagnose_me/presentation/screens/login/login.dart';
import 'package:diagnose_me/presentation/screens/otp_two/otp_two.dart';
import 'package:diagnose_me/presentation/screens/otp_verified/otp_verified.dart';
import 'package:flutter/material.dart';
import 'presentation/screens/sign_up/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpTwoScreen(),
    );
  }
}
