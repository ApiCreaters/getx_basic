import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'loginController.dart';

class apiHomeScreen extends StatefulWidget {
  const apiHomeScreen({Key? key}) : super(key: key);

  @override
  State<apiHomeScreen> createState() => _apiHomeScreenState();
}

class _apiHomeScreenState extends State<apiHomeScreen> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: const InputDecoration(
                hintText: "Email"
              ),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: const InputDecoration(
                hintText: "Password"
              ),
            ),
            SizedBox(height: 50,),
            Obx((){
              return InkWell(
                onTap: (){
                  controller.loginApi();
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff262626),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 8,
                            spreadRadius: 2.0,
                            color: Colors.blue,
                            offset: Offset(-5,-5)
                        ),
                        BoxShadow(
                            blurRadius: 8,
                            spreadRadius: 2.0,
                            color: Colors.red,
                            offset: Offset(5,5)
                        )
                      ]
                  ),
                  child: Center(
                    child: controller.loading.value ? CircularProgressIndicator(strokeWidth: 2, color: Colors.white,) : Text("Login"),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
