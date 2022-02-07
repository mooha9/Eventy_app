import 'package:eventy_app/controllers/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:eventy_app/controllers/auth/signin_controller.dart';
import 'package:eventy_app/data/LocalStorage.dart';
import 'package:eventy_app/controllers/auth/signup_controller.dart';
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

    Get.lazyPut<SignInController>(() => SignInController());
    Get.lazyPut<SignUpController>(() => SignUpController());
    Get.lazyPut<LocalStorage>(() => LocalStorage());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<NewAdController>(() => NewAdController());
    // Get.lazyPut<AdViewContoller>(() => AdViewContoller());
    // Get.lazyPut<HomeViewController>(() => HomeViewController());
    // Get.lazyPut<HomeView>(() => HomeView());
  }
}
