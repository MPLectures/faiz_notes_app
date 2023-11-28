
import 'package:get/get.dart';

class BottomNavigationController extends GetxController{

  // HomeScreen
  var selectedIndex = 0.obs;
  void changeIndex(int index){
    selectedIndex.value = index;
  }

  // Add Notes Home Screen
  var selectedIndexValue = 0;
  void changeIndexValue(int index){
    selectedIndex.value = index;
  }
}