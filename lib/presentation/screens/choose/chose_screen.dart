import 'package:flutter/material.dart';

import '../../../app/app_color.dart';
import '../../../app/app_images.dart';
import '../../../app/app_text.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(Assets.onboardingThree),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                TextApp.onBoardingThree,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 70,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    alignment: Alignment.center,
                    width: 230,
                    height: 48,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        color: ColorApp.threeColor),
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )),
              ),
              const SizedBox(
                height: 36,
              ),
               InkWell(
                onTap: () {},
                child: Container(
                    alignment: Alignment.center,
                    width: 230,
                    height: 48,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        color: ColorApp.threeColor),
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
