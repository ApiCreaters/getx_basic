import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;

  void loginApi() async{
    loading.value = true;
    try {
      Map newData = {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      };

      final response = await post(Uri.parse('https://reqres.in/api/login'), // put(Uri.parse()), delete(Uri.parse()), patch(Uri.parse()),
         // body: {
         //   'email': emailController.value.text,
         //   'password': passwordController.value.text,
         // },
          body: jsonEncode(newData),
         headers: {
            'Authoeria' : 'xyz Token Name'
         }
      );

      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar("Login", "Login success");
      } else {
        loading.value =false;
        Get.snackbar("Login Failed", data['error']);
      }
    }catch(e){
      loading.value = false;
      Get.snackbar("Exception", e.toString());
    }

  }

}