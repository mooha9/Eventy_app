import 'dart:convert';
import 'package:eventy_app/models/card/card_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
// ignore: unused_import
import 'package:eventy_app/routes/route.dart';
import 'package:eventy_app/data/LocalStorage.dart';
import 'package:eventy_app/helpers/Constants.dart';
// import 'package:intl/date_symbols.dart';


class ManageCardContoller extends GetxController {
  static ManageCardContoller get to => Get.find();

  String 
      category= "category",
      name = "",
      workType = "",
      city = "",
      logo = "",
      url_work = "",
      tagLine = "",
      email = "",
      phoneNumber = "";
  RxBool userLogged = false.obs;
  LocalStorage storage = LocalStorage();
 

  createCard() async {
    var url = "$BaseUrl/auth/local/register";
    var body = jsonEncode({
      "category":"$category",
      "name": "$name",
      "workType": "$workType",
      "city": "$city",
      "logo": "$logo",
      "url_work": "$url_work",
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
     
    }
    // Logger().d(data);
    //
  }

  // createCard() async {
  //   var ok = await createCard.userSignUp(
  //       category : category,
  //       name: name,
  //       workType: workType,
  //       city: city,
  //       logo: logo,
  //       url_work: url_work,
  //       tagLine: tagLine,
  //       email: email,
  //       phoneNumber: phoneNumber);
  //   if (ok) {
  //     Get.toNamed('/ManageCard');
  //   } else {
  //     Get.snackbar(
  //       'Somthing Wrong',
  //       'Make Sure Card Info Is Correct',
  //       colorText: Colors.white,
  //       backgroundColor: Colors.red,
  //     );
  //   }
  // }

  // next() {
  //   Get.toNamed('/SignUp2');
  // }

  

  
  List<DBCard> cards = [];
  Future getAll() async{
    var data = await http.get(Uri.parse("https://eventy1.herokuapp.com/cards"));
    var jsonData = json.decode(data.body);
    for (var c in jsonData)
    { 
      cards.add(DBCard(
      // c['userName'],

      c['id'],
      c['name'],
      c['category'],
      c['workType'],
      c['city'],
      c['logo'],
      c['url_work'],
      c['tagLine'],
      c['email'],
      c['phoneNumber'],
      // c['user']
      
      ));
    }
    return cards;
  }
  // void edit(){
  //   Navigator.push(, new MaterialPageRoute(builder: (context)=> CreateCard(this.id)));
  // }
  // void delete() async{
  //   await http.delete(Uri.parse("https://eventy1.herokuapp.com/cards/${this.id}"));
  // }
  showDeleteDialog(delete){
    return showDialog(
          context: delete,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Delete'),
              content: Text('Are you sure to delete this card?'),
              actions: <Widget>[
                // ignore: deprecated_member_use
                FlatButton(
                  color: Colors.teal,
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  child: Text('yes, Delete'),
                  onPressed: delete ,
                ),
              ],
            );
          });
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
