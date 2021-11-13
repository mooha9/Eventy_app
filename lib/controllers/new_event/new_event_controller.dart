import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:mazad_app/Bindings/Routers.dart';
import 'package:mazad_app/controllers/AuthController/LoginController.dart';
import 'package:mazad_app/controllers/HomeController/HomeController.dart';
import 'package:mazad_app/models/Ad.dart';
import 'package:mazad_app/models/NewAd.dart';
import 'package:mazad_app/models/UploadModel.dart';
import 'package:mazad_app/services/NewAddService.dart';
import 'package:mazad_app/utils/alerts.dart';
import 'package:mazad_app/utils/app_state.dart';

class NewAdController extends GetxController {

  static NewAdController to = Get.find();
  var logger = Logger();

  NewAdService newAddService = NewAdService();

  final HomeViewController homeViewController =
      Get.put<HomeViewController>(HomeViewController());

  // form =================================================
  GlobalKey<FormState> get formKey => _formKey;
  final GlobalObjectKey<FormState> _formKey =
      GlobalObjectKey<FormState>("_UploadFormState");
  String title = '';
  String content = "";
  List<Tag> tags = <Tag>[];
  String category = "";
  List<String> comments = [];
  int likes = 0;
  DateTime publishedAt = DateTime.now();
  String createdBy = "";
  String updatedBy = "";
  int? userId;
  String? username;
  var contactNumber;

  // dropdown  =================================================
  int? selectedCatId = 5;
  String? selectedCatTitle = "غير مصنف";
  List<Category>? _dropDownMenuItemsStrings2 = <Category>[];

  List<Category>? get dropDownMenuItemsStrings2 => _dropDownMenuItemsStrings2;

  var titleController = TextEditingController();
  var contentController = TextEditingController();
  var tagsController = TextEditingController();
  var contactNumberController = TextEditingController();

  // Images =======================================================
  List<File> files = [];
  List<File> files2 = [];
  List<Upload> ImagesFilesFromServer = [];
  var pathes = [];
  final appState = Rx<AppState>(AppState.IDLE);

  /// methods ============================================================

  tester() async {
    // Logger().d("A");
    await newAddService.test();
  }

  cleanControllers() {
    files2.clear();
    titleController.text = "";
    contentController.text = "";
    tagsController.text = "";
    contactNumberController.text = "";
  }

  chosenImagesSingleImagePicker(ImageSource imageSource) async {
    final File _image;
    files.clear();

    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      // Logger().d(_image.path);
      logger.d(_image.path);

      files.add(_image);
      update();
    }
    return files;
    // files.clear();
  }

  chosenImagesSingleImagePicker2(ImageSource imageSource) async {
    final File _image;
    // files2.clear();

    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      // Logger().d(_image.path);
      logger.d(_image.path);

      files2.add(_image);
      update();
    }
    return files;
    // files.clear();
  }

  chosenImagesMultiFilePicker(context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
    );

    if (result != null) {
      // files2.clear();
      var chosenImages = result.paths.map((path) => File(path!)).toList();

      for (File file in chosenImages) {
        String path = file.path;
        pathes.add(path);
        // logger.d("path : ${path}");
        // Logger().d("path : ${path}");
        files2.add(file);
      }
      logger.d("files2 leng : ${files2.length}");

      // PlatformFile file = result.files.first;
      // Logger().d(file.name);
      // Logger().d(file.bytes);
      // Logger().d(file.size);
      // Logger().d(file.extension);
      // Logger().d(file.path);
      // Logger().d("files2 : ${files2.length}");
    } else {
      // User canceled the picker
    }

    update();
  }

  // Server ===============================================================
  Future<List<Upload>> uploadImage(file) async {
    // File file = files.first;

    try {
      ImagesFilesFromServer = await newAddService
          .uploadImage(file)
          .catchError((onError) => printError(info: onError.toString()));
      // Logger().d(ImagesFilesFromServer.length);
    } catch (e) {
      Logger().d(e);
    }
    return ImagesFilesFromServer;
  }

  Future<bool> sendToServer() async {
    if (files2.length == 0 || formKey.currentState!.validate() == false) {
      Alerts.showNotOkMessage();
    }
    if (formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        appState.value = AppState.LOADING;

        var newAd = await adFromInput();
        var mapFromObject = newAd.toJson(); //todo uncommit
        // logger.d(mapFromObject.length);
        await newAddService.createNewAd(mapFromObject);
        appState.value = AppState.DONE;

        // await showOkMessage();
        // Get.back();
        await Get.offAndToNamed(Routers.initialRoute);
      } on Exception catch (_) {
        await Alerts.showNotOkMessage();

        appState.value = AppState.ERROR;
      }
      return true;
    }
    return false;
  }

  // UI ===============================================================

  Future<NewAd> adFromInput() async {
    NewAd ad;
    // var image;

    // /// trying single image
    // var UploadImage = await uploadImage(files);
    // // String json = jsonEncode(UploadImage);
    // // logger.d(json);
    // Upload image = Upload();
    //
    // for (Upload q in UploadImage) {
    //   image = q;
    //   // logger.d(image.toJson());
    // }

    // todo first upload image to backend then take the id and url and linked to new ad object [*]

    // var map = UploadImage.map((e) => e.toJson());
    // logger.d(map);

    /// trying multi image
    // todo first upload images to backend related to an object [*]

    List images = await newAddService.uploadImages(files2);

    List<AdImage> uploadedImages = [];

    for (Upload a in images) {
      var mapFromObject = a.toJson();
      AdImage imageFromUploadMoedl = AdImage.fromJson(mapFromObject);
      // logger.d(imageFromUploadMoedl.id);
      uploadedImages.add(imageFromUploadMoedl);
    }
    // logger.d(list.length);

    //  get User name
    username = await Get.find<LoginController>()
        .getLoggedInUserObject()
        .then((value) => value!.username);

    //  get user Id

    userId = await Get.find<LoginController>()
        .getLoggedInUserObject()
        .then((value) => value!.id);

    // var catList = Get.find<HomeViewController>().categories;
    //
    // var cat = catList
    //     .map((e) => e)
    //     .where((element) => element.title == selectedCatTitle)
    //     .toList();
    //
    // catId = cat.map((e) => e.id.toString());

    contactNumber = "0551954619";

    // Logger().d("WW" + catId.toString());

    // var ImageId = image.id;
    // var ImageUrl = image.url;

    ad = NewAd(
      title: title,
      content: content,
      user: User(id: userId, username: username),
      tags: tags,
      category: Category(id: selectedCatId, title: selectedCatTitle),
      comments: comments,
      likes: 50,
      images: uploadedImages,
      contactNumber: contactNumber,
      publishedAt: publishedAt,
      createdBy: createdBy,
      updatedBy: updatedBy,
    );

    // logger.d(ad.images);
    return ad;
  }

  List<DropdownMenuItem<Category>> MenuItemsList() {
    var list = Get.find<HomeViewController>().categories;
    _dropDownMenuItemsStrings2 = list.cast<Category>();
    var list2 = _dropDownMenuItemsStrings2!
        .map(
          (e) => DropdownMenuItem<Category>(
            value: e,
            child: Text(
              e.title.toString(),
            ),
          ),
        )
        .toList();
    return list2;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    cleanControllers();
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();

    await injectValues();
  }

  injectValues() async {
    Logger().d(selectedCatId);
    MenuItemsList();
    update();
  }
}
