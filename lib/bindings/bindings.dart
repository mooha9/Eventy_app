import 'package:EventySA/controllers/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:EventySA/controllers/auth/signin_controller.dart';
import 'package:EventySA/data/LocalStorage.dart';
import 'package:EventySA/controllers/auth/signup_controller.dart';
// import 'package:EventySA/lib/views/pages/home/home.dart';
// import 'package:EventySA/lib/views/pages/signin/sign_in.dart';
// import 'package:EventySA/controllers/AdViewContoller/AdViewContoller.dart';
// import 'package:EventySA/controllers/HomeController/HomeController.dart';
import 'package:EventySA/controllers/new_event/new_event_controller.dart';
// import 'package:EventySA/controllers/ProfileController/ProfileController.dart';

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
