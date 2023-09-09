import 'package:diagnose_me/presentation/screens/choose/search.dart';
import 'package:diagnose_me/presentation/screens/healthtest/healthfive.dart';
import 'package:diagnose_me/presentation/screens/healthtest/healthfour.dart';
import 'package:diagnose_me/presentation/screens/healthtest/healththree.dart';
import 'package:diagnose_me/presentation/screens/healthtest/hwalthtestwo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Search(),
    );
  }
}
