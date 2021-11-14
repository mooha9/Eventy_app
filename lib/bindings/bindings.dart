import 'package:get/get.dart';
import 'package:eventy_app/controllers/auth/signin_controller.dart';
import 'package:eventy_app/data/LocalStorage.dart';
import 'package:eventy_app/controllers/auth/signUp_controller.dart';
// import 'package:eventy_app/lib/views/pages/home/home.dart';
// import 'package:Eventy_app/lib/views/pages/signin/sign_in.dart';
// import 'package:eventy_app/controllers/AdViewContoller/AdViewContoller.dart';
// import 'package:eventy_app/controllers/HomeController/HomeController.dart';
 import 'package:eventy_app/controllers/new_event/new_event_controller.dart';
// import 'package:eventy_app/controllers/ProfileController/ProfileController.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // ignore: todo
    // TODO: implement dependencies
    Get.lazyPut<LocalStorage>(() => LocalStorage());
    Get.lazyPut<NewAdController>(() => NewAdController());
    // Get.lazyPut<ProfileController>(() => ProfileController());
    // Get.lazyPut<AdViewContoller>(() => AdViewContoller());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<SignUpContoller>(() => SignUpContoller());
    // Get.lazyPut<HomeViewController>(() => HomeViewController());
    // Get.lazyPut<HomeView>(() => HomeView());
    // Get.lazyPut<LoginView>(() => LoginView());
  }
}