import 'package:flutter/material.dart';

import '../../../app/app_color.dart';
import '../../../app/app_images.dart';
import '../../../app/app_text.dart';

class HealthFour extends StatelessWidget {
  const HealthFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          TextApp.HealthTest,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(child: Image.asset(Assets.body)),
            const Text(
              TextApp.Mysymptoms,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 130,
                  height: 38,

                  decoration: BoxDecoration(
                    color: ColorApp.fivecolor,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(TextApp.Headache),
                      IconButton(onPressed: (){}, icon: Image.asset(Assets.delete))
                    ],
                  ),
                ),
                SizedBox(width: 25,),
                Container(
                  width: 130,
                  height: 38,

                  decoration: BoxDecoration(
                      color: ColorApp.fivecolor,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(TextApp.Headache),
                      IconButton(onPressed: (){}, icon: Image.asset(Assets.delete))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 170,
                  height: 38,

                  decoration: BoxDecoration(
                      color: ColorApp.fivecolor,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(TextApp.Headacheinface),
                      IconButton(onPressed: (){}, icon: Image.asset(Assets.delete))
                    ],
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  width: 130,
                  height: 38,

                  decoration: BoxDecoration(
                      color: ColorApp.fivecolor,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(TextApp.Headache),
                      IconButton(onPressed: (){}, icon: Image.asset(Assets.delete))
                    ],
                  ),
                ),
              ],
            ),
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
                      onPressed: (){}, child:   const Text(TextApp.back,style: TextStyle(
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
    );
  }
}
