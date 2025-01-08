import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  late SharedPreferences prefs;

  Future<void> storeCredentials(String id, String password) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('id', id);
    prefs.setString('password', password);
  }

  Future<Map<String, dynamic>> getUserCred() async {
    prefs = await SharedPreferences.getInstance();
    return {
      "id": prefs.getString('id'),
      "password": prefs.getString('password'),
    };
  }
}
