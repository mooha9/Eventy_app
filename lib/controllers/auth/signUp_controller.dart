import 'dart:convert';

import 'package:eventy_app/util/app_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
// ignore: unused_import
import 'package:eventy_app/routes/route.dart';
import 'package:eventy_app/data/LocalStorage.dart';
import 'package:eventy_app/helpers/Constants.dart';
import 'package:eventy_app/services/auth.dart';



class SignUpController extends GetxController {
  static SignUpController get to => Get.find();
  var isLoading = false.obs;
  var isHidden1 = true;
  var isHidden2 = true;
  String firstname = "",lastname = "",email = "",username = "",phonenumber = "",password = "",confirmpassword = ""
  // ,country = "",city = "",gender = "",age = ""
  ;
  RxBool userLogged = false.obs;
  LocalStorage storage = LocalStorage();
  final AuthService authService = AuthService();

  final appState2 = Rx<AppState>(AppState.IDLE);
  var isPreesed = false.obs;

  createNewUser() async {
    var url = "$BaseUrl/auth/local/register";
    var body = jsonEncode({
      "firstname": "$firstname",
      "lastname": "$lastname",
      "email": "$email",
      "username": "$username",
      "phonenumber": "$phonenumber",
      "password": "$password",
      "confirmpassword": "$confirmpassword",
      // "country":"$country",
      // "city":"$city",
      // "gender":"$gender",
      // "age": "$age",
    });
    var headers = {'Content-Type': 'application/json'};

    var response =
        await http.post(Uri.parse("$url"), headers: headers, body: body);
    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      var jwtToken = data['jwt'];
      storage.saveToken("jwt", jwtToken);
      Logger().d(data['jwt']);
    }
    // Logger().d(data);
    //
  }

  createNewUser2() async {
    appState2.value = AppState.LOADING;
    isPreesed.value = true;
    var ok = await authService.userSignUp(
        firstname: firstname,
        lastname: lastname,
        email: email,
        identifier: username,
        phonenumber: phonenumber,
        password: password,
        confirmpassword: confirmpassword,
        // country: country,
        // city: city,
        // gender: gender, 
        // age: age,
        );
    if (ok) {
      Get.toNamed("/SignUp2");
    } else {
      Get.snackbar(
        'Somthing Wrong',
        'Make Sure Sign Up Info Is Correct',
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
    }
    appState2.value = AppState.DONE;
    isPreesed.value = false;
  }

  void toggleHidden1Status() {
    isHidden1 = !isHidden1;
    if (isHidden1) {
      isHidden1 = true;
    } else {
      isHidden1 = false; //or pressedBool.toggle();
    }

    update();
  }

  void toggleHidden2Status() {
    isHidden2 = !isHidden2;
    if (isHidden2) {
      isHidden2 = true;
    } else {
      isHidden2 = false; //or pressedBool.toggle();
    }

    update();
  }

// createNewUser2() async {
//   var url = "$BaseUrl/auth/local/register";
//
//   var headers = {'Content-Type': 'application/json'};
//   var request =
//       http.Request('POST', Uri.parse('$url'));
//   request.body = json.encode({"identifier": "asd@gmail.com", "password": "asdasd"});
//   request.headers.addAll(headers);
//
//   http.StreamedResponse response = await request.send();
//
//   if (response.statusCode == 200) {
//     Logger().d(await response.stream.bytesToString());
//   } else {
//     Logger().d(response.reasonPhrase);
//   }
// }
}
