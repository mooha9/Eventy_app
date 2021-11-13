import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:eventy_app/routes/route.dart';
import 'package:eventy_app/data/LocalStorage.dart';
import 'package:eventy_app/helpers/Constants.dart';
import 'package:eventy_app/services/auth.dart';

class SignUpContoller extends GetxController {
  static SignUpContoller get to => Get.find();

  String email = "", password = "", name = "";
  RxBool userLogged = false.obs;
  LocalStorage storage = LocalStorage();
  final AuthService authService = AuthService();

  createNewUser() async {
    var url = "$BaseUrl/auth/local/register";
    var body = jsonEncode({
      "username": "$name",
      "email": "$email",
      "password": "$password",
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

    var ok = await authService.userSignUp(
        identifier: name, email: email, password: password);
    if (ok) {
      Get.offAndToNamed("/SignIn");
    } else {
      Get.snackbar(
        'Somthing Wrong',
        'Make Sure Login Info Is Correct',
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
    }
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
