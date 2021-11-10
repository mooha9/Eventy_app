
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
class SignInController extends GetxController {
 
 var isHidden = true ;
 
  nextAction (){
    Get.offAllNamed('/BottomNav');
  }
  
  signUp(){
 Get.toNamed('/SignUp');
  }

  void toggleHiddenStatus() {
    isHidden = !isHidden;
      if(isHidden){
      isHidden = true ;
    }
    else {
      isHidden = false ; //or pressedBool.toggle();
    }
   
   
    update();
  }
}