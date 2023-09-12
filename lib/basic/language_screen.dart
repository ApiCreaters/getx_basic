import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguesScreen extends StatefulWidget {
  const LanguesScreen({Key? key}) : super(key: key);

  @override
  State<LanguesScreen> createState() => _LanguesScreenState();
}

class _LanguesScreenState extends State<LanguesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en','US'));
              }, child: Text("English")),
              SizedBox(width: 10,),
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('gu','IN'));
              }, child: Text("Gujrati")),
            ],
          )
        ],
      ),
    );
  }
}
