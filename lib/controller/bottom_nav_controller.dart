import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs; //Inthis case this variable it "rxint"
//duo to the GetX got extendes the variable that we goign to deal with complex variable therfpre we use "0.obs"

  void onItemTapped(int index) {
    print("my index is $index");
    selectedIndex.value = index;
    //When ever we deal with complex variable we assing with the ".value"
    //this variable is "reactive" because the variable you want to make reactive we use ".obs"
    //what ever the changes we make  and that changes should reflect in the UI the we need to make variable reactive in getX
  }
}
