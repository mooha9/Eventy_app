import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
// ignore: unused_import
import 'package:eventy_app/routes/route.dart';
import 'package:eventy_app/controllers/auth/signin_controller.dart';
import 'package:eventy_app/helpers/Constants.dart';
import 'package:eventy_app/models/event.dart';
import 'package:eventy_app/models/new_comment.dart';
import 'package:eventy_app/services/auth.dart';
import 'package:eventy_app/util/alerts.dart';
import 'package:eventy_app/util/app_state.dart';
import 'package:url_launcher/url_launcher.dart';

class EventViewContoller extends GetxController {
  AuthService authService = AuthService();
  Dio dio = Dio();
  var commentText = "test";
  final appState = Rx<AppState>(AppState.IDLE);

  Future showConfirmAlert(model) async {
    return await Get.defaultDialog(
      title: "تنبيه",
      titleStyle: fontStyle.copyWith(color: Colors.blue),
      content: Text(
        "إرسال التعليق",
        style: fontStyle,
      ),
      confirm: TextButton(
        onPressed: () async {
          await sendNewComment(model);
        },
        child: Text("نعم"),
      ),
      cancel: TextButton(
        onPressed: () => Get.back(),
        child: Text("لا"),
      ),
    );
  }

  Future<void> makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future contactWhatsApp(Event model, String message) async {
    Logger().d("contactWhatsApp ${model.contactNumber}");

    String url = "whatsapp://send?phone=${model.contactNumber}&text=$message";
    // String url = "whatsapp://send?phone=${model.contactNumber}&text=$message";
    await canLaunch(url) ? await launch(url) : printError(info: "canot open");
  }

  Future<void> sendNewComment(event) async {
    appState.value = AppState.LOADING;
    var newEvent = await createNewCommentObject(event);
    var mapFromObject = newEvent.toJson();
    // Logger().d(mapFromObject);
    await Future.delayed(Duration(seconds: 3));
    final String encodedData = json.encode(mapFromObject);
    var url = "$BaseUrl/comments";
    String userToken = await authService.getLoggedUserId();
    var headers = {
      'Authorization':
          // 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTYyMzc0NDU4NiwiZXhwIjoxNjI2MzM2NTg2fQ.cXInAifRBjoT8bx_50uKbKBQMdkdgFgyaGYX9-OkvAk',
          'Bearer $userToken',
      'Content-Type': 'application/json'
    };
    var response = await http
        .post(Uri.parse("$url"), headers: headers, body: encodedData)
        .catchError((dynamic e) {
      Logger().d("Error");
      Logger().d("${e.toString()}");
    });

    if (response.statusCode == 200) {
      Logger().d("${response.statusCode}");
      await Alerts.showOkMessageComment();
      update();
      Get.toNamed("/BottomNav");
    } else {
      Logger().d("response.statusCode !!${response.statusCode.toString()}  ");
      await Alerts.showNotOkMessageComment();
    }
    appState.value = AppState.DONE;
  }

  Future<NewComment> createNewCommentObject(event) async {
    NewComment comment;
    User? user = await Get.find<SignInController>().getLoggedInUserObject();

    comment = NewComment(
        commentText: commentText,
        user: user,
        event: event,
        publishedAt: DateTime.now());

    return comment;
  }

  @override
  void onInit() {
    // ignore: todo
    // TODO: implement onInit
    super.onInit();
    Logger().d("onInit");
  }
}
