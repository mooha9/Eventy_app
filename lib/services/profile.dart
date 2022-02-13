// ignore_for_file: body_might_complete_normally_nullable

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:EventySA/helpers/Constants.dart';

import 'auth.dart';

class ProfileService {
  Future<List<dynamic>?> getEventsForUser(userId) async {
    var url = "$BaseUrl/Events?user.id=$userId";
    var response = await http.get(Uri.parse("$url"), headers: headersNoAuth);
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      Logger().d("$data");

      return data;
    } else {
      Logger().d("Error Geting Data");
    }
  }

  Future<List<dynamic>?> getCardsForUser(userId) async {
    var url = "$BaseUrl/cards?user.id=$userId";
    var response = await http.get(Uri.parse("$url"), headers: headersNoAuth);
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      Logger().d("$data");

      return data;
    } else {
      Logger().d("Error Geting Data");
    }
  }

  Future<dynamic> deleteEvent(eventId) async {
    var url = "$BaseUrl/Events/$eventId";
    var userToken = await AuthService().getLoggedUserId();

    Map<String, String> headersAuth = {
      'Content-Type': 'application/json',
      "Accept": "application/json",
      "Access-Control_Allow_Origin": "*",
      "Authorization": "Bearer $userToken",
    };

    var response = await http.delete(Uri.parse("$url"), headers: headersAuth);
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      Logger().d("$data");

      return data;
    } else {
      Logger().d("Error Geting Data");
    }
  }
  // Future<List<dynamic>?> getCommentsForUser(userId) async {
  //   var url = "$BaseUrl/comments?user.id=$userId";
  //   var response = await http.get(Uri.parse("$url"), headers: headersNoAuth);
  //   final data = jsonDecode(response.body);
  //   if (response.statusCode == 200) {
  //     return data;
  //   } else {
  //     Logger().d("Error Geting Data");
  //   }
  // }
}
