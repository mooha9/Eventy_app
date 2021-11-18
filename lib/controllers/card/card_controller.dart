
import 'package:dio/dio.dart';
import 'package:eventy_app/models/card/card_models.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ManageCardContoller extends GetxController {
Dio dio = Dio();
List<Card1> cards = [];


  Future getAll() async{
    var data = await http.get(Uri.parse("https://eventy1.herokuapp.com/cards"));
    var jsonData = json.decode(data.body);
    // ignore: unused_local_variable
    for (var c in jsonData)
    // { 
    //   cards.add(Card1(
      
    //   c['id'],
    //   c['name'],
    //   c['category'],
    //   c['workType'],
    //   c['city'],
    //   c['url_work'],
    //   c['tagLine'],
    //   c['email'],
    //   c['phoneNumber'],
    //   c['publishedAt'],
    //   c['createdAt'],
    //   c['updatedAt'],
    //   c['v'],
    //   c['participant'], 
    //   c['usersId'],
    //   c['cardId'],
        
    //   ));
    // }
    return cards;
  }
  // void edit(){
  //   Navigator.push(context, new MaterialPageRoute(builder: (context)=> CreateCard(this.id)));
  // }
  // void delete() async{
  //   await http.delete(Uri.parse("https://eventy1.herokuapp.com/cards/${this.id}"));
  // }
}