import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  // static CacheHelper? _instance;
  late SharedPreferences sharedPreferences;

  // CacheHelper._();
  
  // Singletone instance is called every time we call the CacheHelper class,
  // but it will only be created once at the first time
  // factory CacheHelper() {
  //   _instance ??= CacheHelper._();
  //   return _instance!;
  // }

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> saveDate({required String key, required dynamic value}) async {
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else {
      return await sharedPreferences.setDouble(key, value);
    }
  }

  dynamic getDate({required String key}) {
    return sharedPreferences.get(key);
  }

  Future<bool> removeDate({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  Future<void> updateData({required String key, required dynamic value}) async {
    await removeDate(key: key);
    await saveDate(key: key, value: value);
  }

  Future<bool> containsKey({required String key}) async {
    return sharedPreferences.containsKey(key);
  }
}
