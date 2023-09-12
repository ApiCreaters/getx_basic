import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class CounterController extends GetxController{

  // Image Picker
  RxString imagePath = "".obs;
  Future getImage() async{
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    if(image != null){
      imagePath.value = image.path.toString();
    }

  }



  //List
  RxList<String> fruitList = ["Orange", "Apple", "Mango", "Banana", "Coconet","Pinapple","Kiwi","Cherry","Lemon",].obs;
  RxList tempFruitList = [].obs;

  addToFavourit(String value){
    tempFruitList.add(value);
  }

  removeFavourit(String value){
    tempFruitList.remove(value);
  }


  // Example 1
  RxInt counter = 0.obs;
  incrementS(){
    counter.value++;
    print(counter.value);
  }

//  Example 2
  RxDouble opacity = 0.4.obs;

  setOpes(double value){
    opacity.value = value;
  }

//  Example 3
  RxBool notification = false.obs;

  setNoti(bool value) {
    notification.value = value;
  }
  
}