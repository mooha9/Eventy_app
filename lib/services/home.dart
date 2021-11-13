import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:mazad_app/helpers/Constants.dart';

class HomeService {






  Future<List<dynamic>?> getCategories() async {
    var url = "$BaseUrl/categories";
    var response = await http.get(Uri.parse("$url"), headers: headersNoAuth);
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      // Logger().d(data);

      return data;
    } else {
      Logger().d("Error Geting Data");
    }
  }

  Future<List<dynamic>?> getAdsWithFilter(catId) async {
    // var url = "$BaseUrl/Ads?category.id=2";
    var url = "$BaseUrl/Ads?category.id=$catId";
    var response = await http.get(Uri.parse("$url"), headers: headersNoAuth);
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      // Logger().d(response.body);
      // Logger().d(jsonEncode(response.body));

      return data;
    } else {
      Logger().d("Error in Data");
    }
  }

  Future<List<dynamic>?> getAllAds () async {
    // var url = "$BaseUrl/Ads?category.id=2";
    var url = "$BaseUrl/Ads";
    var response = await http.get(Uri.parse("$url"), headers: headersNoAuth);
    final data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      // Logger().d(response.body);
      // Logger().d(jsonEncode(response.body));

      return data;
    } else {
      Logger().d("Error in Data");
    }
  }
}
