import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends ChangeNotifier {
  String username = "";
  String email = "";
  bool LoggedIn = false;

  static final storage = GetStorage();

  void OnSubmit(String userName, String Email) {
    username = userName;
    email = Email;

    storage.write("userName", username);
    storage.write("email", email);
  }

  onLogin(bool Loggedins) {
    LoggedIn = Loggedins;
    notifyListeners();
  }
}
