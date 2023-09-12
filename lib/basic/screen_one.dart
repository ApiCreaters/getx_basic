import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/basic/screen_two.dart';

import 'home_screen.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({Key? key, this.name }) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen One " + Get.arguments[0],
          style: TextStyle(color: Colors.purpleAccent.shade700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          TextButton(
              onPressed: () {
                // Navigator.pop(context);
                Get.to(ScreenTwo());
              },
              child: Text("Go to Screen"))
        ],
      ),
    );
  }
}
