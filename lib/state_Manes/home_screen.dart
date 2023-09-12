import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_control.dart';

class HomesScreen extends StatefulWidget {
  const HomesScreen({Key? key}) : super(key: key);

  @override
  State<HomesScreen> createState() => _HomesScreenState();
}

class _HomesScreenState extends State<HomesScreen> {

  final CounterController controller = Get.put(CounterController());
  // int counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx((){
                return Text(controller.counter.toString(),style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),);
              }),
              Column(
                children: [
                  Obx((){
                    return  Container(
                      height: 200,
                      width: 200,
                      color: Colors.red.withOpacity(controller.opacity.value),
                    );
                  }),
                  Obx((){
                    return Slider(value: controller.opacity.value, onChanged: (value){
                      // opacity = value;
                      controller.setOpes(value);
                    });
                  })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Notifications"),
                  Obx((){
                    return Switch(value: controller.notification.value, onChanged: (value){
                      controller.setNoti(value);
                    });
                  })
                ],
              ),
              SizedBox(height: 100)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementS();
        },
      ),
    );
  }
}
