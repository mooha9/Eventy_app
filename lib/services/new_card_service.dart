import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:eventy_app/services/auth.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:eventy_app/data/LocalStorage.dart';
import 'package:eventy_app/helpers/Constants.dart';
import '../helpers/Constants.dart';

// import 'dart:io';
// import 'package:eventy_app/models/event.dart';
// import 'package:eventy_app/models/UploadModel.dart';
// import 'package:get/get.dart';
// import 'package:eventy_app/routes/route.dart';
// import 'package:http_parser/http_parser.dart';


class NewCardService {
  AuthService authService = AuthService();
  Dio dio = Dio();

  /// ===============================================================================================

  Future createNewCard(Map<String, dynamic> body) async {
    var url = "$BaseUrl/cards/";
    String userToken = await authService.getLoggedUserId();
    // Logger().d(body);
    // Logger().d(userToken.toString());
    // Logger().d(userToken.runtimeType);

    var headers = {
      'Authorization': 'Bearer $userToken',
      'Content-Type': 'application/json'
    };
    final String encodedData = json.encode(body);
    Logger().d(encodedData);

    var response = await http
        .post(Uri.parse("$url"), headers: headers, body: encodedData)
        .catchError((dynamic e) {
      Logger().d("Error");
      Logger().d("${e.toString()}");
    });
    Logger().d(response.statusCode);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Logger().d("createNewCard  json result :$data");
    }
  }

  var token;
  LocalStorage storage = LocalStorage();
 
  Future<bool> cardCreate({ id,category,name,workType,phonenumber,city,email,logo,url_work,tagLine,username,phoneNumber}) async {
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      "id":"$id",
      "category": "$category",
      "name": "$name",
      "workType": "$workType",
      "city": "$city",
      "logo": "$logo",
      "url_work": "$url_work",
      "tagLine": "$tagLine",
      "email": "$email",
      "phonenumber": "$phonenumber",
      
    });
    var response = await http.post(Uri.parse('$BaseUrl/cards'),
        headers: headers, body: body);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      Logger().d("userSignUp  json result : $data");
      // Logger().d("getUserApi  json result : ${data.runtimeType}");
      // Logger().d("getUserApi  json result : ${a.email}");
      return true;
    }
    return false;
  }


  

  /// ===============================================================================================

  // Future uploadImage(File file) async {
  //   // https://www.youtube.com/watch?v=0MO1QyEGIt0
  //   var url = "$BaseUrl/upload/";
  //   String userToken = await authService.getLoggedUserId();
  //   var headers = {
  //     'Authorization':
  //         // 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTYyMzc0NDU4NiwiZXhwIjoxNjI2MzM2NTg2fQ.cXInAifRBjoT8bx_50uKbKBQMdkdgFgyaGYX9-OkvAk',
  //         'Bearer $userToken',
  //     'Content-Type': 'multipart/form-data'
  //   };

  //   var files = await MultipartFile.fromFile(file.path,
  //       filename: file.path.split("/").last,
  //       contentType: MediaType('image', 'png'));
  //   var type = "image/jpg";
  //   var body = {"files": files, "type": type};

  //   FormData formData = FormData.fromMap(body);

  //   Logger().d("files count in body in map ${formData.files.length}");

  //   Response response = await dio.post(url, data: formData, options: Options(headers: headers));
  //   if (response.statusCode == 200) {
  //     log("${response.statusCode}");
  //     log("${response.data.runtimeType}");

  //     // final prettyString = JsonEncoder.withIndent('  ').convert(response.data);
  //     // log("OK $prettyString");

  //     List<Upload> listOfImages = [];
  //     List<dynamic> dataList = response.data;
  //     var json_object = dataList.map((dynamic e) => e).toList();
  //     for (var s in json_object) {
  //       final upload = Upload.fromJson(s);
  //       listOfImages.add(upload);
  //     }
  //     return listOfImages;
  //   } else {
  //     Logger().d("uploadImage  json result :");
  //   }
  // }

  // /// ===============================================================================================

  // Future uploadImages(List<File> pickedFiles) async {
  //   var formData = FormData();

  //   for (var file in pickedFiles) {
  //      formData.files.addAll([
  //       MapEntry("files", await MultipartFile.fromFile(file.path,filename: file.path.split("/").last, contentType: MediaType('image', 'jpg'))),
  //     ]);
  //     Logger().d(file.path);
  //     Logger().d(formData.files[0].value);
  //   }
  //   var url = "$BaseUrl/upload/";
  //   String userToken = await authService.getLoggedUserId();
  //   var headers = {
  //     'Authorization':
  //     // 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImlhdCI6MTYyMzc0NDU4NiwiZXhwIjoxNjI2MzM2NTg2fQ.cXInAifRBjoT8bx_50uKbKBQMdkdgFgyaGYX9-OkvAk',
  //     'Bearer $userToken',
  //     'Content-Type': 'multipart/form-data'
  //   };
  //   Response response = await dio.post(url, data: formData, options: Options(headers: headers));
  //   if (response.statusCode == 200) {
  //     log("${response.statusCode}");
  //     log("${response.data.runtimeType}");
  //     // Logger().d("${response.data.toString()}");
  //     List<Upload> listOfImages = [];
  //     List<dynamic> dataList = response.data;
  //     var json_object = dataList.map((dynamic e) => e).toList();
  //     for (var s in json_object) {
  //       final upload = Upload.fromJson(s);
  //       listOfImages.add(upload);
  //     }
  //     return listOfImages;
  //   } else {
  //     Logger().d("uploadImage  json result :");
  //   }

  // }

  Future test() async {
    // ignore: unused_local_variable
    var url = "$BaseUrl/users";
    var url2 = "$BaseUrl/cards/";
    var response = await dio.get(url2);
    if (response.statusCode == 200) {
      log("${response.statusCode}");
      log("${response.data}");
      // var data = response.data as List;

      // final prettyString = JsonEncoder.withIndent('  ').convert(response.data);
      // log("OK $prettyString");

      // log("${data.map((e) => e).map((e) => e['address']['street'])}");
      // log("${response.data['address']['street']}");
      // log("${response.data['medium']}");

    }
  }

}
