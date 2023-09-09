import 'package:flutter/material.dart';

import '../../app/app_color.dart';

class Cutomrow extends StatefulWidget {
  const Cutomrow({super.key, required this.txt});
  final String txt;

  @override
  State<Cutomrow> createState() => _CutomrowState();
}

class _CutomrowState extends State<Cutomrow> {
  bool? ischecked = false;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.txt,style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14
        ),),
        const Spacer(),
        Checkbox(
          value: ischecked,
          activeColor: ColorApp.twoColor,
          onChanged: (bool? value) {
            setState(() {
              ischecked = value;
            });
          },

        ),
      ],
    );
  }
}
