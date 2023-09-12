import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/basic/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
var naa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX",style: TextStyle(color: Colors.purpleAccent.shade700),),
      ),
      body: Column(
        children: [
          calss(),
          const SizedBox(height: 20),
          TextField(
            controller: naa,
          ),
          SizedBox(height: 15,),
          TextButton(onPressed: (){
            // Get.to(ScreenOne(name: naa.text.toString()));
            Get.toNamed('/screenOne', arguments:[
              naa.text.toString(),
            ]);
            // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));
          }, child: Text("Go to Next Screen"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar('Avi', 'My Fast Program in GetX',);
        },
      ),
    );
  }



  calss(){
    return Column(
      children: [
        Card(
          child: ListTile(
            title: Text("GetxX Dialog Alert"),
            onTap: (){
              Get.defaultDialog(
                title: 'Delete Chat',
                titlePadding: EdgeInsets.all(8),
                middleText: 'Are you sure you want to delete this chat',
                // middleText ma 3 lines hoy che,
                // pan content multiple line che
                content: Column(
                  children: const [
                    Text("dd"),
                    Text("dd"),
                    Text("dd"),
                    Text("dd"),
                    Text("dd"),
                    Text("dd"),
                  ],
                ),
                contentPadding: EdgeInsets.all(15),
                // textConfirm: 'Yes',
                // textCancel: 'No',
                confirm: TextButton(onPressed: (){
                  // Navigator.pop(context);          //// Navigator Close
                  Get.back();                        //// GetX Close
                }, child: Text('Ok')),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("GetxX Bottom Sheet"),
            onTap: (){
              Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text("Light Theme"),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text("Dark Theme"),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  )
              );
            },
          ),
        ),
      ],
    );
  }
}
