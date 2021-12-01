import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:eventy_app/controllers/profile/profile_controller.dart';
import 'package:eventy_app/helpers/Constants.dart';
import 'package:eventy_app/models/event.dart';

class Alerts {



  static showOkMessageEvent() async {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        "تمام",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      messageText: Text(
        "تم رفع الإعلان بنجاح",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      backgroundColor: Colors.green,
      icon: Icon(
        Icons.done_rounded,
        color: Colors.white,
      ),
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 3),
      backgroundGradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.green,
          // Colors.green.shade200,
          // Colors.green.shade300,
          // Colors.green.shade400,
          // Colors.green.shade500,
          Colors.green.shade800,
        ],
      ),
      colorText: Colors.white,
    );
  }
  static showNotOkMessage() async {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        "خطأ",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      messageText: Text(
        "يجب عليك إختيار صورة  قبل رفع الإعلان والتأكد من ملء جميع الحقول",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      backgroundColor: Colors.red,
      icon: Icon(
        Icons.error,
        color: Colors.white,
      ),
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 3),
      backgroundGradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.red,
          // Colors.green.shade200,
          // Colors.green.shade300,
          // Colors.green.shade400,
          // Colors.green.shade500,
          Colors.red.shade800,
        ],
      ),
      colorText: Colors.white,
    );
  }

  static showOkMessageComment() async {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        "تمام",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      messageText: Text(
        "تم إضافه التعليق بنجاح",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      backgroundColor: Colors.green,
      icon: Icon(
        Icons.done_rounded,
        color: Colors.white,
      ),
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 3),
      backgroundGradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.green,
          // Colors.green.shade200,
          // Colors.green.shade300,
          // Colors.green.shade400,
          // Colors.green.shade500,
          Colors.green.shade800,
        ],
      ),
      colorText: Colors.white,
    );
  }
  static showNotOkMessageComment() async {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        "خطأ",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      messageText: Text(
        "لم يتم التعليق ",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      backgroundColor: Colors.red,
      icon: Icon(
        Icons.done_rounded,
        color: Colors.white,
      ),
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 3),
      backgroundGradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.red,
          // Colors.green.shade200,
          // Colors.green.shade300,
          // Colors.green.shade400,
          // Colors.green.shade500,
          Colors.red.shade800,
        ],
      ),
      colorText: Colors.white,
    );
  }

  static showDeleteConfirm(Event model) async {
    return await Get.defaultDialog(
      title: "تنبيه",
      titleStyle: fontStyle.copyWith(color: Colors.blue),
      content: Text(
        "حذف الإعلان",
        style: fontStyle,
      ),
      confirm: TextButton(
        onPressed: () async {
          //  Get.put<ProfileController>(ProfileController());

          // await Get.find<ProfileController>().deleteEvent(model.id!);
          // Get.back();
          //  Get.find<ProfileController>().update();


        },
        child: Text("نعم"),
      ),
      cancel: TextButton(
        onPressed: () => Get.back(),
        child: Text("لا"),
      ),
    );
  }


}