import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

 static String? getToken(String key) {
    return sharedPreferences.getString(key);
  }

  static Future<bool> saveData(
    String key,
    dynamic value,
  ) async {
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else {
      return false;
    }
  }
  static Future<bool> deleteToken(String key) async{
    return sharedPreferences.remove(key);
  }
}
