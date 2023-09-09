import 'package:diagnose_me/app/app_images.dart';
import 'package:flutter/material.dart';

import '../../app/app_text.dart';

class Qusetionrow extends StatelessWidget {
  const Qusetionrow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        const Text(TextApp.Doyouhavefeverorhighbodytempeture),
        const SizedBox(height: 20,),
        Row(
          children: [
            Image.asset(Assets.empty),
            const SizedBox(width: 30,),
            const Text('Yes'),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          children: [
            Image.asset(Assets.empty),
            const SizedBox(width: 30,),
            const Text('No'),
          ],
        ),
      ],
    );
  }
}
