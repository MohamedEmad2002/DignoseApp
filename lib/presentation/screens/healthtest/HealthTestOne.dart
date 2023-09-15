import 'package:flutter/material.dart';
import '../../../app/app_color.dart';
import '../../../app/app_images.dart';
import '../../../app/app_text.dart';
import 'hwalthtestwo.dart';

class HealthTestOne extends StatelessWidget {
  const HealthTestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          TextApp.HealthTest,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Image.asset(Assets.menue),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              TextApp.hello,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              TextApp.letsgetstarted,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 90,
            ),
            const Center(
              child: Text(
                TextApp.Selectyourage,
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 40,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            side: MaterialStatePropertyAll(
                                BorderSide(color: ColorApp.mainColor)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            elevation: MaterialStatePropertyAll(0.0),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(150))))),
                        onPressed: () {},
                        child: Image.asset(Assets.plus))),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 38,
                  height: 38,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorApp.twoColor),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: const Text(
                    '50',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 40,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: ColorApp.mainColor)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          elevation: MaterialStatePropertyAll(0.0),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(150))))),
                      onPressed: () {},
                      child: Image.asset(Assets.increament)),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              TextApp.Selectyourgender,
              textAlign: TextAlign.center,
            )),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(Assets.maile),
                  Image.asset(Assets.femaile)
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      actions: <Widget>[
                        SizedBox(
                          width: 314,
                          height: 655,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text('Sample'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Sample'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Sample'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Sample'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Sample'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                  SizedBox(height: 50,),
                                  Center(
                                    child: SizedBox(
                                      width: 260,
                                      height: 48,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: 142,
                                            height: 48,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(24)),
                                                color: ColorApp.threeColor),
                                            child: const Text(
                                              TextApp.Next,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
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
