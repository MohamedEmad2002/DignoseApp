import 'package:diagnose_me/app/app_color.dart';
import 'package:diagnose_me/app/app_images.dart';
import 'package:diagnose_me/app/app_text.dart';
import 'package:diagnose_me/presentation/screens/choose/chose_screen.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  Widget dotpageveiw() {
    return Builder(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 3; i++)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: i == PageNumber ? 25 : 6,
                height: 6,
                decoration: BoxDecoration(
                  color: i == PageNumber
                      ? const Color(0xff000000)
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
          ],
        );
      },
    );
  }

  PageController nextpage = PageController();
  int PageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
            onPageChanged: (value) {
              setState(() {
                PageNumber = value;
              });
            },
            controller: nextpage,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(Assets.onboardingOne),
                  const SizedBox(height: 30,),
                  dotpageveiw(),
                  const SizedBox(height: 60,),
                  const Text(
                    TextApp.onBoardingOne,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 100,),
                  InkWell(
                    onTap: () {
                      nextpage.animateToPage(1,
                          duration: const Duration(microseconds: 700),
                          curve: Curves.fastEaseInToSlowEaseOut);
                    },
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
              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(Assets.onboardingTwo),
                   const SizedBox(height: 30,),
                  dotpageveiw(),
                  const SizedBox(height: 60,),
                  const Text(
                    TextApp.onBoardingTwo,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 100,),
                  InkWell(
                    onTap: () {
                      nextpage.animateToPage(2,
                          duration: const Duration(microseconds: 700),
                          curve: Curves.easeIn);
                    },
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
              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(Assets.onboardingThree),
                   const SizedBox(height: 30,),
                  dotpageveiw(),
                   const SizedBox(height: 60,),
                  const Text(
                    TextApp.onBoardingThree,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 100,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                    },
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
            ]),
      ),
    );
  }
}
