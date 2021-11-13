import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
class SignUpController extends GetxController {

  var isHidden1 = true ;
  var isHidden2 = true ;
  next(){
    Get.toNamed('/SignUp2');
  }

  void toggleHidden1Status() {
    isHidden1 = !isHidden1;
      if(isHidden1){
      isHidden1 = true ;
    }
    else {
      isHidden1 = false ; //or pressedBool.toggle();
    }
   
    update();
  }

  void toggleHidden2Status() {
    isHidden2 = !isHidden2;
      if(isHidden2){
      isHidden2 = true ;
    }
    else {
      isHidden2 = false ; //or pressedBool.toggle();
    }
   
    update();
  }
}