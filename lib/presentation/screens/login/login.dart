import 'package:diagnose_me/app/app_color.dart';
import 'package:diagnose_me/app/app_images.dart';
import 'package:diagnose_me/app/app_text.dart';
import 'package:diagnose_me/presentation/components/customtff.dart';
import 'package:flutter/material.dart';
import '../../components/otp_widgets.dart';
import '../otp_verified/otp_verified.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneNumber = TextEditingController();
    final TextEditingController password = TextEditingController();
    final TextEditingController confirmpassword = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          TextApp.loginAppbar,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(Assets.login)),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    TextApp.phoneNumber,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 85,
                        child: TextField(
                          controller: phoneNumber,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              hintText: '+971',
                              suffixIcon: Icon(Icons.arrow_downward_outlined)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          width: 230,
                          child: CustomTFF(
                              hintText: TextApp.phoneNumber,
                              kbType: TextInputType.number,
                              controller: phoneNumber)),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    TextApp.password,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTFF(
                      hintText: TextApp.password,
                      kbType: TextInputType.visiblePassword,
                      controller: phoneNumber),
                  Container(
                    alignment: Alignment.bottomRight,
                    child:  TextButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(70.0)
                            )
                          ),
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Center(
                                child: Container(
                                  height: 400,
                                 color: Colors.white,
                                  child:  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      const Text(TextApp.forgotPassword,style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal
                                      ),),
                                  const SizedBox(height: 50,),
                                  const Text(TextApp.enteryourMobile,textAlign: TextAlign.center,),
                                      const SizedBox(height: 70,),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Row(
                                          children: [
                                            Text(TextApp.phoneNumber,style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                            ),textAlign: TextAlign.start,),

                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 85,
                                            child: TextField(
                                              controller: phoneNumber,
                                              keyboardType: TextInputType.number,
                                              decoration: const InputDecoration(
                                                  hintText: '+971',
                                                  suffixIcon: Icon(Icons.arrow_downward_outlined)),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          SizedBox(
                                              width: 230,
                                              child: CustomTFF(
                                                  hintText: TextApp.phoneNumber,
                                                  kbType: TextInputType.number,
                                                  controller: phoneNumber)),
                                        ],
                                      ),
                                      const SizedBox(height: 50,),
                                      InkWell(
                                        onTap: () {
                                          showModalBottomSheet<void>(
                                            context: context,
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.vertical(
                                                    top: Radius.circular(70.0)
                                                )
                                            ),
                                            builder: (BuildContext context) {
                                              return Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                                child: Center(
                                                  child: Container(
                                                    height: 400,
                                                    color: Colors.white,
                                                    child:  Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        const Text(TextApp.enterdigitsCode,style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.normal
                                                        ),),
                                                        const SizedBox(height: 50,),
                                                        const Text(TextApp.Enterthefourdigitcodesenttoyourmobilenumber,textAlign: TextAlign.center,),
                                                        const SizedBox(height: 70,),
                                                        const SizedBox(height: 10,),
                                                        const Padding(
                                                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Otp(),
                                                              Otp(),
                                                              Otp(),
                                                              Otp(),
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(height: 50,),
                                                        InkWell(
                                                          onTap: () {
                                                            showModalBottomSheet<void>(
                                                              context: context,
                                                              shape: const RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.vertical(
                                                                      top: Radius.circular(70.0)
                                                                  )
                                                              ),
                                                              builder: (BuildContext context) {
                                                                return Padding(
                                                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                                                  child: Center(
                                                                    child: Container(
                                                                      height: 400,
                                                                      color: Colors.white,
                                                                      child:  Column(
                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                        children: <Widget>[
                                                                          const Text(TextApp.resetPassword,style: TextStyle(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.normal
                                                                          ),),
                                                                          const SizedBox(height: 20,),
                                                                          const Text(TextApp.Setthenewpasswordforyouraccountsoyoucanloginandaccessallourfeatures,textAlign: TextAlign.start,),
                                                                          const SizedBox(height: 30,),
                                                                          const Row(
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Text(TextApp.password,
                                                                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                                                                            ],
                                                                          ),
                                                                          CustomTFF(hintText: TextApp.password, kbType: TextInputType.visiblePassword, controller: password),
                                                                          const SizedBox(
                                                                            height: 40,
                                                                          ),
                                                                          const Row(
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Text(TextApp.confirmPassword,
                                                                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                                                                            ],
                                                                          ),
                                                                          CustomTFF(hintText: TextApp.confirmPassword, kbType: TextInputType.visiblePassword, controller: confirmpassword),
                                                                          const SizedBox(height: 50,),
                                                                          InkWell(
                                                                            onTap: () {
                                                                              showDialog<String>(
                                                                                context: context,
                                                                                builder: (BuildContext context) =>  Center(
                                                                                  child: AlertDialog(
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.circular(25.0),
                                                                                    ),
                                                                                    title: const Text('Congratulation',textAlign: TextAlign.center,),
                                                                                    content: const Text('Password Reset Success',textAlign: TextAlign.center),
                                                                                    actions: <Widget>[
                                                                                      Center(child: Image.asset(Assets.resetsucces)),
                                                                                      const SizedBox(height: 40,),
                                                                                      Center(
                                                                                        child: InkWell(
                                                                                          onTap: (){
                                                                                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                                                                              return const OtpVerifiedScreen();
                                                                                            }));
                                                                                          },
                                                                                          child: Container(
                                                                                              alignment: Alignment.center,
                                                                                              width: 229,
                                                                                              height: 48,
                                                                                              decoration: const BoxDecoration(
                                                                                                  borderRadius:
                                                                                                  BorderRadius.all(Radius.circular(24)),
                                                                                                  color: ColorApp.threeColor),
                                                                                              child: const Text(
                                                                                                TextApp.done,
                                                                                                style: TextStyle(color: Colors.white, fontSize: 14),
                                                                                              )),
                                                                                        ),
                                                                                      ),
                                                                                      const SizedBox(height: 40,)

                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                            child: Container(
                                                                                alignment: Alignment.center,
                                                                                width: 229,
                                                                                height: 48,
                                                                                decoration: const BoxDecoration(
                                                                                    borderRadius:
                                                                                    BorderRadius.all(Radius.circular(24)),
                                                                                    color: ColorApp.threeColor),
                                                                                child: const Text(
                                                                                  TextApp.resetPassword,
                                                                                  style: TextStyle(color: Colors.white, fontSize: 14),
                                                                                )),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          child: Container(
                                                              alignment: Alignment.center,
                                                              width: 229,
                                                              height: 48,
                                                              decoration: const BoxDecoration(
                                                                  borderRadius:
                                                                  BorderRadius.all(Radius.circular(24)),
                                                                  color: ColorApp.threeColor),
                                                              child: const Text(
                                                                TextApp.Continue,
                                                                style: TextStyle(color: Colors.white, fontSize: 14),
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: 229,
                                            height: 48,
                                            decoration: const BoxDecoration(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(24)),
                                                color: ColorApp.threeColor),
                                            child: const Text(
                                              TextApp.submit,
                                              style: TextStyle(color: Colors.white, fontSize: 14),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text(
                        TextApp.forgotPassword,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: ColorApp.threeColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          alignment: Alignment.center,
                          width: 229,
                          height: 48,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                              color: ColorApp.threeColor),
                          child: const Text(
                            TextApp.loginbutton,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(TextApp.donotHaveAccount),
                      TextButton(
                          onPressed: () {

                          }, child: const Text(TextApp.signup))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
