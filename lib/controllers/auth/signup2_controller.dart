// import 'dart:convert';

import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
// ignore: unnecessary_import
import 'package:get/utils.dart';

// import 'package:http/http.dart' as http ;
class SignUp2Controller extends GetxController {
  static SignUp2Controller get to => Get.find();

  String? currentSelectedValue1; //contry
  String? currentSelectedValue2; //city
  String? currentSelectedValue3; //gender
  List country = <String>["Saudi Arabia", "Other"];
  List city = <String>["Buradah", "Unazah", "Other"];
  List genderType = <String>["MALE", "FEMALE", "NOT SAY"];

  void setSelected1(String value) {
    currentSelectedValue1 = value;
    update();
  }

  void setSelected2(String value) {
    currentSelectedValue2 = value;
    update();
  }

  void setSelected3(String value) {
    currentSelectedValue3 = value;
    update();
  }

  next() {
    Get.offAllNamed('/BottomNav');
  }
}
