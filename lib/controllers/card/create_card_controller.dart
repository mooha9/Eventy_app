import 'dart:convert';
import 'dart:io';
import 'package:eventy_app/data/LocalStorage.dart';
import 'package:eventy_app/helpers/Constants.dart';
import 'package:eventy_app/services/new_card_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http ;
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';

class CreateCardContoller extends GetxController {
  static CreateCardContoller get to => Get.find();
  List item =<String> ['Service Provider','Activity Owner','Official Sponser'];
  String? selectedValue;
  
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;


  void onSelected (String value){
    selectedValue = value ;
    update();
  }
  

  void filedcontent (String value){
    category = value ;
    update();
  }
   
  
 
 


  void getImage (ImageSource imageSource) async{

      // ignore: deprecated_member_use
      final pickedFile= await ImagePicker().getImage(source: imageSource);
      if(pickedFile!= null){
        selectedImagePath.value = pickedFile.path;
        selectedImageSize.value = ((File(selectedImagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)+"Mb";
      }
      else{
        Get.snackbar("Error", "No Logo Selected");
      }
  }
  
  // Card1 card1 = Card1('','','','','','','','','','', );
    final logo = "".obs;
  String? 
      category = "".obs.string,
      name = "",
      workType = "",
      city = "",
      
      urlWork = "",
      tagLine = "",
      email = "" ,
      phoneNumber = "";

  RxBool userLogged = false.obs;
  LocalStorage storage = LocalStorage();
  final NewCardService cardService = NewCardService();

  createNewCard() async {
    var url = "$BaseUrl/cards";
    var body = jsonEncode({

      "category": "$category",
      "name": "$name",
      "workType": "$workType",
      "city": "$city",
      "logo": "$logo",
      "urlWork": "$urlWork",
      "tagLine": "$tagLine",
      "email": "$email",
      "phoneNumber": "$phoneNumber",
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

  createNewCard2() async {
    var ok = await  cardService.cardCreate(

        category: category,
        name: name,
        workType: workType,
        city: city,
        logo: logo,
        urlWork: urlWork,
        tagLine: tagLine,
        email: email,
        phoneNumber:phoneNumber
        );
    if (ok) {
      Get.toNamed("/ManageCard");
    } else {
      Get.snackbar(
        'Somthing Wrong',
        'Make Sure Card Info Is Correct',
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
    }
  }

  
}

























  // next() {
  //   Get.toNamed('/SignUp2');
  // }

  
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







  // Future save() async{
  //   if (card.id == ' '){
  //      await http.post(Uri.parse("https://eventy1.herokuapp.com/cards/"),
  //      headers:<String,String>{'Context-Type':'application/json;charset=UTF-8'},
  //      body:<String,String>{
  //       //  'userName':card.userName,
  //        'category':card.category,'name':card.name,'workType':card.workType,'city':card.city,'url_work':card.url_work,'tagLine':card.tagLine,'email':card.email,'phoneNumber':card.phoneNumber,});
  //   }
  //   else{
  //      await http.put(Uri.parse("https://eventy1.herokuapp.com/cards/${card.id}"), 
  //      headers:{'Context-Type':'application/json;charset=UTF-8'},
  //       body:{
  //         // 'userName':card.userName,
  //       'category':card.category,'name':card.name,'workType':card.workType,'city':card.city,'url_work':card.url_work,'tagLine':card.tagLine,'email':card.email,'phoneNumber':card.phoneNumber,}); 
  //   }
  //  Navigator.push(context, new MaterialPageRoute(builder: (context)=>ManageCard(this.id)));
  // }

  // void initState() {
  //   super.initState();
  //   if(this.id !=''){
  //     getOne();
  //   }
    
  // }
  // void getOne() async{
  //  var data = await http.get(Uri.parse("https://eventy1.herokuapp.com/cards/${this.id}"));
  //  var c = json.decode(data.body);
  //  setState(() {
  //       card = DBCard (
  //         // c['userName'],
  //       c['id'],c['category'],c['name'],c['workType'],c['city'],c['logo'],c['url_work'],c['tagLine'],c['email'], c['phoneNumber']);
  //  });
  // }
  