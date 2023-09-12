import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_control.dart';
import 'home_screen.dart';

class HomesScreenList extends StatefulWidget {
  const HomesScreenList({Key? key}) : super(key: key);

  @override
  State<HomesScreenList> createState() => _HomesScreenListState();
}

class _HomesScreenListState extends State<HomesScreenList> {

  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: ListView.builder( itemCount: controller.fruitList.length,
                itemBuilder: (context,index){
              return ListTile(
                onTap: (){
                  if(controller.tempFruitList.contains(controller.fruitList[index].toString())){
                    controller.removeFavourit(controller.fruitList[index].toString());
                  }else {
                    controller.addToFavourit(controller.fruitList[index].toString());
                  }
                },
                onLongPress: (){
                  Get.to(HomesScreen());
                },
                title: Text(controller.fruitList[index].toString()),
                trailing: Obx((){
                  return Icon(Icons.favorite,color: controller.tempFruitList.contains(controller.fruitList[index].toString()) ? Colors.red : Colors.transparent,);
                })
              );
            }),
          ),
          Expanded(
            flex: 1,
            child: Obx((){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: controller.imagePath.isNotEmpty ?
                    FileImage(File(controller.imagePath.toString())) : null,
                  ),
                  OutlinedButton(onPressed: (){
                    controller.getImage();
                  }, child: Text("PickImage"))
                ],
              );
            }),
          ),
        ],
      )
    );
  }
}
