import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:EventySA/controllers/profile/profile_controller.dart';
import 'package:EventySA/helpers/Constants.dart';
import 'package:EventySA/models/event.dart';

class Alerts {
  static showOkMessageEvent() async {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        "Done",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      messageText: Text(
        "The event is uploaded",
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

  static showNotOkMessageEvent() async {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        "Error",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      messageText: Text(
        "make sure you upload the photos",
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

  static showOkMessageCard() async {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        "Done",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      messageText: Text(
        "The Card is uploaded",
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

  static showNotOkMessageCard() async {
    Get.snackbar(
      "",
      "",
      titleText: Text(
        "Error",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      messageText: Text(
        "make sure you upload the photo ",
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
        "Done",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      messageText: Text(
        "Comment is send",
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
        "Error",
        style: fontStyle.copyWith(color: Colors.white),
      ),
      messageText: Text(
        "No comment add ",
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
      title: "Attention",
      titleStyle: fontStyle.copyWith(color: Colors.blue),
      content: Text(
        "Delete Comment",
        style: fontStyle,
      ),
      confirm: TextButton(
        onPressed: () async {
          //  Get.put<ProfileController>(ProfileController());

          // await Get.find<ProfileController>().deleteEvent(model.id!);
          // Get.back();
          //  Get.find<ProfileController>().update();
        },
        child: Text("Yes"),
      ),
      cancel: TextButton(
        onPressed: () => Get.back(),
        child: Text("No"),
      ),
    );
  }
}
