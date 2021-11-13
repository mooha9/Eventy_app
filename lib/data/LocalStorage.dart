import 'package:get_storage/get_storage.dart';

class LocalStorage {
  GetStorage box = GetStorage();

  void saveToken(jwtToken, value) async {
    print("saveToken called");

    await box.write(jwtToken, value);
  }

  readToken() async {
    print("readToken called");

    var token = await box.read("jwt");
    if (token == null) {
      token = null;
    }
    return token;
  }

  Future deleteToken() async {
    print("deleteToken called");
    box.remove('jwt');
  }
}
