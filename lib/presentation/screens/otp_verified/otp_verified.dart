import 'package:diagnose_me/app/app_text.dart';
import 'package:flutter/material.dart';
import '../../../app/app_color.dart';
import '../../../app/app_images.dart';
import '../healthtestone/HealthTestOne.dart';

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
              onTap: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0)
                      )
                    ),
                    actions: [
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 100,),
                            const Text(TextApp.thisaccountFor),
                            const SizedBox(height: 100,),
                            SizedBox(
                              width: 200,
                                child: ElevatedButton(
                                  style: const ButtonStyle(
                                    side: MaterialStatePropertyAll(
                                      BorderSide(
                                        color: ColorApp.mainColor
                                      )
                                    ),
                                    elevation: MaterialStatePropertyAll(0.0),
                                    backgroundColor: MaterialStatePropertyAll(
                                      Colors.white
                                    ),
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25.0)
                                        )
                                      )
                                    )
                                  ),
                                  onPressed: (){}, child:   const Text(TextApp.Patient,style: TextStyle(
                                  color: ColorApp.mainColor
                                ),),)),
                            const SizedBox(height: 17,),
                            SizedBox(
                                width: 200,
                                child: ElevatedButton(
                                  style: const ButtonStyle(
                                      side: MaterialStatePropertyAll(
                                          BorderSide(
                                              color: ColorApp.mainColor
                                          )
                                      ),
                                      elevation: MaterialStatePropertyAll(0.0),
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.white
                                      ),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25.0)
                                              )
                                          )
                                      )
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return const HealthTestOne();
                                    },));
                                  }, child:   const Text(TextApp.Doctor,style: TextStyle(
                                    color: ColorApp.mainColor
                                ),),)),
                            const SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
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
