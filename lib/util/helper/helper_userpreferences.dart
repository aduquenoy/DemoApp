import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weatherplay/data/model/user.dart';

class UserPreferences {

  static late SharedPreferences _preferences;

  static const _keyUser = 'user';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());
    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);
    return json == null ? const User(lang: 'en', range: 1, theme: 1, unit: 1) : User.fromJson(jsonDecode(json));
  }
}