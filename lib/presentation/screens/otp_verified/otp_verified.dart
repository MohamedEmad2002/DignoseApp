import 'package:diagnose_me/app/app_text.dart';
import 'package:flutter/material.dart';
import '../../../app/app_color.dart';
import '../../../app/app_images.dart';

class OtpVerifiedScreen extends StatelessWidget {
  const OtpVerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(Assets.verified),
            const SizedBox(
              height: 70,
            ),
            const Text(
              TextApp.congratulation,
              style: TextStyle(
                fontSize: 20,
                color: ColorApp.textGrey,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              TextApp.successMessage,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 70,
            ),
            Image.asset(Assets.iconVerified),
            const SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  alignment: Alignment.center,
                  width: 229,
                  height: 48,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: ColorApp.threeColor),
                  child: const Text(
                    TextApp.done,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
