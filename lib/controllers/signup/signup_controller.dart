import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
class SignUpController extends GetxController {
  var passwordVisible = 0.obs;
  // ignore: unrelated_type_equality_checks
  bool get isHidden => passwordVisible.value == true ;

  forward(){
    
        //go to home page 
        Get.toNamed("/SignUp2");


    }

}