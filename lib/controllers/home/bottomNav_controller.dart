import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomNavContoller extends GetxController {

  var currentPage = 0; 


  void pageselect (int value){
    currentPage = value ;
    update();
  }
}