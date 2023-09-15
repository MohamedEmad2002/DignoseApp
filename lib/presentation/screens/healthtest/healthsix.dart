import 'package:diagnose_me/app/app_color.dart';
import 'package:diagnose_me/app/app_text.dart';
import 'package:flutter/material.dart';

import '../../../app/app_images.dart';

class HealthSix extends StatelessWidget {
  const HealthSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Image.asset(Assets.arrowBack),
        title: const Text(
          TextApp.HealthTest,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
            const SizedBox(height: 30,),
            Center(child: Image.asset(Assets.three)),
            const SizedBox(height: 40,),
            const Text(TextApp.three,style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400
            ),),
            const SizedBox(height: 20,),
            const Text('Recommended Analysis',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 5,),
            const Text('Neurologist'),
            const SizedBox(height: 10,),
            const Text('Possible conditions',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 10,),
            const Divider(
              color: Color.fromARGB(255, 238, 232, 232),
              thickness: 1,
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Image.asset(Assets.four),
                const SizedBox(width: 20,),
                const Text('Strong evidence',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),)
              ],
            ),
            const SizedBox(height: 20,),
            const Text('Tension headaches',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 10,),
            const Text('Tension-type headaches',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Show details',style: TextStyle(
                      color: ColorApp.mainColor
                    ),),
                    const SizedBox(width: 10,),
                    Image.asset(Assets.arrowBack)
                  ],
                ),
                const SizedBox(height: 20,),
                const  Divider(
              color: Color.fromARGB(255, 238, 232, 232),
              thickness: 1,
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Image.asset(Assets.four),
                const SizedBox(width: 20,),
                const Text('Strong evidence',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),)
              ],
            ),
            const SizedBox(height: 20,),
            const Text('Tension headaches',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 10,),
            const Text('Tension-type headaches',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Show details',style: TextStyle(
                      color: ColorApp.mainColor
                    ),),
                    const SizedBox(width: 10,),
                    Image.asset(Assets.arrowBack)
                  ],
                ),
                const SizedBox(height: 20,),
                const Divider(
              color: Color.fromARGB(255, 238, 232, 232),
              thickness: 1,
            ),
            const Divider(
              color: Color.fromARGB(255, 238, 232, 232),
              thickness: 1,
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Image.asset(Assets.four),
                const SizedBox(width: 20,),
                const Text('Strong evidence',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),)
              ],
            ),
            const SizedBox(height: 20,),
            const Text('Tension headaches',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 10,),
            const Text('Tension-type headaches',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Show details',style: TextStyle(
                      color: ColorApp.mainColor
                    ),),
                    const SizedBox(width: 10,),
                    Image.asset(Assets.arrowBack)
                  ],
                ),
                const SizedBox(height: 20,),
                const Divider(
              color: Color.fromARGB(255, 238, 232, 232),
              thickness: 1,
            ),
            
          ]),
        ),
      ),
    );
  }
}
