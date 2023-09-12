
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeGetxScreen extends StatefulWidget {
  const SizeGetxScreen({Key? key}) : super(key: key);

  @override
  State<SizeGetxScreen> createState() => _SizeGetxScreenState();
}

class _SizeGetxScreenState extends State<SizeGetxScreen> {
  @override
  Widget build(BuildContext context) {

    final wi = MediaQuery.of(context).size.width*1;

    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Stack(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height*0.35,
              height: Get.height*0.35,
              width: wi*0.9,
              color: Colors.redAccent,
              child: Center(
                child: Text("Center"),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: Get.width*0.7,
              color: Colors.greenAccent,
              child: Center(
                child: Text("Center"),
              ),
            )
          ],
        )
    );
  }
}

