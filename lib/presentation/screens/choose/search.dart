import 'package:flutter/material.dart';

import '../../../app/app_color.dart';
import '../../../app/app_text.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          TextApp.Search,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: const BorderSide(color: ColorApp.twoColor, width: 2),
                ),
                hintText: 'Search , e.g , headache',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorApp.twoColor),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
