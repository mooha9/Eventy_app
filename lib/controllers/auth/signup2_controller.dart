// import 'dart:convert';

import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
// import 'package:http/http.dart' as http ;
class SignUp2Controller extends GetxController {    
  

  List? statesList;
  // String? _myState;

//   String stateInfoUrl = 'http://cleanions.bestweb.my/api/location/get_state';
//   Future<String> _getStateList() async {
//     await http.post(stateInfoUrl, headers: {
//       'Content-Type': 'application/x-www-form-urlencoded'
//     }, body: {
//       "api_key": '25d55ad283aa400af464c76d713c07ad',
//     }).then((response) {
//       var data = json.decode(response.body);

// //      print(data);
//       setState(() {
//         statesList = data['state'];
//       });
//     });
//   }

//   // Get State information by API
//   List? citiesList;
//   String? _myCity;

//   String cityInfoUrl =
//       'http://cleanions.bestweb.my/api/location/get_city_by_state_id';
//   Future<String> _getCitiesList() async {
//     await http.post(cityInfoUrl, headers: {
//       'Content-Type': 'application/x-www-form-urlencoded'
//     }, body: {
//       "api_key": '25d55ad283aa400af464c76d713c07ad',
//       "state_id": _myState,
//     }).then((response) {
//       var data = json.decode(response.body);

//       setState(() {
//         citiesList = data['cities'];
//       });
//     });
//   }

  var currentSelectedValue1; //contry
    List country = ["Saudi Arabia", "Other"];

  var currentSelectedValue2; //city
  List cities = ["Buradah", "Unazah", "other"];
  
  var currentSelectedValue3;//gender
  List genderTypes = ["MALE", "FEMALE","NOT SAY"];
  
   void setSelected1(String value){
     currentSelectedValue1 = value;
   }
   void setSelected2(String value){
     currentSelectedValue2 = value;
   }
   void setSelected3(String value){
     currentSelectedValue3 = value;
   }
  // var currentSelectedValue= 'MALE';
  // static const genderTypes = ["MALE", "FEMALE","NOT SAY"];
  // var currentSelectedValue1 = 'Saudi Arabia'; //contry
  // static const country = ["Saudi Arabia", "Other"];
  // var currentSelectedValue2 = 'other'; //city
  // static const cities = ["Buradah", "Unazah", "other"];

next(){
  Get.offAllNamed('/BottomNav');
}

}

