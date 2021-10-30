import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
class SignUpController extends GetxController {
  var passwordVisible = 0.obs;
  // ignore: unrelated_type_equality_checks
  bool get isHidden => passwordVisible.value == true ;

  next(){
    
    Get.toNamed('/SignUp2');
  }

}