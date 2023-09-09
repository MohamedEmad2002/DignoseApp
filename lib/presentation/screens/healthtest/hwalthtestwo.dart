import 'package:flutter/material.dart';

import '../../../app/app_color.dart';
import '../../../app/app_text.dart';
import '../../components/custom_row.dart';
import 'healththree.dart';

class HealthTestTwo extends StatefulWidget {
  const HealthTestTwo({super.key});

  @override
  State<HealthTestTwo> createState() => _HealthTestTwoState();
}

class _HealthTestTwoState extends State<HealthTestTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: const Text(TextApp.HealthTest,style: TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
      ),
      body:   Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const SizedBox(height: 30,),
            const Text(TextApp.Selectthesymptomsyoucurrentlyhave,style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),),
            const Cutomrow(txt: 'Headache'),
            const SizedBox(height: 10,),
            const Cutomrow(txt: 'Headache'),
            const SizedBox(height: 10,),
            const Cutomrow(txt: 'Headache'),
            const SizedBox(height: 10,),
            const Cutomrow(txt: 'Headache'),
            const SizedBox(height: 10,),
            const Cutomrow(txt: 'Headache'),
            const SizedBox(height: 10,),
            const Cutomrow(txt: 'Headache'),
            const SizedBox(height: 10,),
            const Cutomrow(txt: 'Headache'),
            const SizedBox(height: 10,),
            const Cutomrow(txt: 'Headache'),
            const SizedBox(height: 10,),
            const Cutomrow(txt: 'Headache'),
            const SizedBox(height: 10,),
            const Cutomrow(txt: 'Headache'),
            const SizedBox(height: 20,),
            Center(
              child: InkWell(
                onTap: () {

                },
                child: Container(
                    alignment: Alignment.center,
                    width: 229,
                    height: 48,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        color: ColorApp.threeColor),
                    child: const Text(
                      TextApp.SaveSymptoms,
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
