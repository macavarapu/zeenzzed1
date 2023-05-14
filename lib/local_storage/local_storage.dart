import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage{
  static Future setAuth(bool authenticate) async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isAuth',authenticate);
  }
  static Future getAuth()async{
   final prefs = await SharedPreferences.getInstance();
   return prefs.getBool('isAuth');
  }
  static Future setEmail(String email) async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('email', email);
  }

  static Future getEmail()async{
   final prefs = await SharedPreferences.getInstance();
   return prefs.getString('email');
  }
}