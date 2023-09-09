import 'package:flutter/material.dart';

import '../../../app/app_color.dart';
import '../../../app/app_images.dart';
import '../../../app/app_text.dart';
import '../../components/q&a.dart';

class HealthFive extends StatelessWidget {
  const HealthFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){},
          icon: Image.asset(Assets.arrowBack),
        ),
        title: const Text(TextApp.HealthTest,style: TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
      ),
      body:   Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const Text(TextApp.Howseverisyourpain,style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600
            ),),
            const Text(TextApp.Taptoshowhowmuchpainsyouarein),
            const SizedBox(height: 30,),
            Image.asset(Assets.progress),
            const Row(
              children: [
                Text(TextApp.Mid),
                SizedBox(width: 233,),
                Text(TextApp.Unbearable)
              ],
            ),
            const SizedBox(height: 20,),
            const Qusetionrow(),
            const SizedBox(height: 30,),
            const Qusetionrow(),
            const SizedBox(height: 30,),
            const Qusetionrow(),
            const SizedBox(height: 120,),
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
                      TextApp.Continue,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
