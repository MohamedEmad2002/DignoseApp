import 'package:diagnose_me/app/app_text.dart';
import 'package:flutter/material.dart';
import '../../../app/app_color.dart';
import '../../../app/app_images.dart';
import '../../components/otp_widgets.dart';

class OtpTwoScreen extends StatelessWidget {
  const OtpTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          TextApp.verificationCode,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
              children: [
                Image.asset(Assets.verificationCode),
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  TextApp.otpSend,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 40,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Otp(),
                    Otp(),
                    Otp(),
                    Otp(),
                  ],
                ),
                const SizedBox(height: 30,),
                const Text(TextApp.resend),
                const SizedBox(height: 100,),
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
                        TextApp.verifiy,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

