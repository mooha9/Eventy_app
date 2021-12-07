import 'package:eventy_app/controllers/auth/signin_controller.dart';
import 'package:eventy_app/models/event.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:eventy_app/views/pages/home/buttom_navbar.dart';
// ignore: unused_import
// import 'package:eventy_app/models/Ad.dart';

class StarterView extends StatefulWidget {
  @override
  _StarterViewState createState() => _StarterViewState();
}

class _StarterViewState extends State<StarterView> {
  var isLogged;
  // var isUser;
  User? user;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // initValues();
  }

  // final LocalStorage storage = LocalStorage();

  @override
  Widget build(BuildContext context) {
    // var isLogged = (value.user);
    // return isUserThere ? LoginView() : baseView();
    // Get.put<LoginController>(LoginController());
    // var isUserThere = Get.find<LoginController>().userLogged.value == false;
    // return isUserThere ? LoginView() : baseView();

    return BottomNav();
  }

  void initValues() async {
    isLogged = Get.find<SignInController>().userLogged.value ;
    user =  await Get.find<SignInController>().getLoggedInUserObject();
    // isUser = Get.put<LoginController>(LoginController()).user;
    if (user != null) {
      Logger().d("user ${user!.email}");
    } else {
      Logger().d("user == null");
    }
    // Logger().d(isLogged.toString());
    // Logger().d(user!.email.toString());
  }
}
