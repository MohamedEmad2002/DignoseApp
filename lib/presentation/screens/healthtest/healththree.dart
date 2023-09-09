import 'package:flutter/material.dart';

import '../../../app/app_color.dart';
import '../../../app/app_images.dart';
import '../../../app/app_text.dart';

class HealthThree extends StatelessWidget {
  const HealthThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(TextApp.HealthTest,style: TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Image.asset(Assets.body),
              const SizedBox(height: 30,),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Image.asset(Assets.add)),
                  const Text(TextApp.Addsymptom,style: TextStyle(
                    fontSize: 18
                  ),)
                ],
              ),
              const Text(TextApp.Addasmanysymptomsasyoucanforthemostaccurateresults,style: TextStyle(
                fontSize: 16
              ),),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: 142,
                      height: 48,
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

                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: 142,
                        height: 48,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            color: ColorApp.threeColor),
                        child: const Text(
                          TextApp.Next,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
