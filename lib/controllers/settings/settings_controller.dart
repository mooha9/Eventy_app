import 'dart:io';
// import 'package:eventy_app/controllers/auth/signin_controller.dart';
// import 'package:eventy_app/models/card/card_models.dart';
// import 'package:eventy_app/models/event.dart';
import 'package:eventy_app/services/profile.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:logger/logger.dart';

class SettingController extends GetxController {
  final profileService = ProfileService();
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  void getImage(ImageSource imageSource) async {
    // ignore: deprecated_member_use
    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value =
          ((File(selectedImagePath.value)).lengthSync() / 1024 / 1024)
                  .toStringAsFixed(2) +
              "Mb";
    } else {
      Get.snackbar("Error", "No Logo Selected");
    }
  }
}
