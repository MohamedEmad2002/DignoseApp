import 'package:diagnose_me/app/app_images.dart';
import 'package:diagnose_me/presentation/components/customtff.dart';
import 'package:flutter/material.dart';

import '../../../app/app_color.dart';
import '../../../app/app_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstname = TextEditingController();
    final TextEditingController lastname = TextEditingController();
    final TextEditingController username = TextEditingController();
    final TextEditingController password = TextEditingController();
    final TextEditingController email = TextEditingController();
    final TextEditingController confirmpassword = TextEditingController();
    final TextEditingController codephone = TextEditingController();
    final TextEditingController phonenumber = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(Assets.arrowBack),
        ),
        title: const Text(
          TextApp.signup,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    TextApp.firstName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    TextApp.lastName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: CustomTFF(
                        hintText: TextApp.firstName,
                        kbType: TextInputType.name,
                        controller: firstname),
                  ),
                  const SizedBox(
                    width: 71,
                  ),
                  SizedBox(
                    width: 150,
                    child: CustomTFF(
                        hintText: TextApp.lastName,
                        kbType: TextInputType.name,
                        controller: lastname),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(TextApp.username,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              CustomTFF(hintText: TextApp.username, kbType: TextInputType.name, controller: username),
              const SizedBox(
                height: 20,
              ),
              const Text(TextApp.email,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              CustomTFF(hintText: TextApp.email, kbType: TextInputType.emailAddress, controller: email),
              const SizedBox(
                height: 20,
              ),
              const Text(TextApp.password,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              CustomTFF(hintText: TextApp.password, kbType: TextInputType.visiblePassword, controller: password),
              const SizedBox(
                height: 20,
              ),
              const Text(TextApp.confirmPassword,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              CustomTFF(hintText: TextApp.confirmPassword, kbType: TextInputType.visiblePassword, controller: confirmpassword),
          const SizedBox(
            height: 20,
          ),
          const Text(TextApp.phoneNumber,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 85,
                      child: TextField(
                        controller: codephone,
                        keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: '+971',
                        suffixIcon: Icon(Icons.arrow_downward_outlined)
                      ),
                      ),
                  ),
                  SizedBox(width: 6,),
                  SizedBox(
                      width: 280,
                      child: CustomTFF(hintText: TextApp.phoneNumber, kbType: TextInputType.number, controller: phonenumber))
                ],
              ),
              Stack(
                children: [
                  Image.asset(Assets.signUp),
                  Positioned(
                    top: 70,
                    left: 80,
                    child: Center(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                            alignment: Alignment.center,
                            width: 229,
                            height: 48,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(24)),
                                color: ColorApp.threeColor),
                            child: const Text(
                              TextApp.Continue,
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            )),
                      ),
                    ),
                  )
                ],
              )
          ],
        ),
    ),
      ));
  }
}
