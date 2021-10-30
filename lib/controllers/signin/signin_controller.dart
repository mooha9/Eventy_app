
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
class SignInController extends GetxController {
 
  nextAction (){
    Get.offAllNamed('/BottomNav');
  }
  
  signUp(){
 Get.toNamed('/SignUp');
  }
}