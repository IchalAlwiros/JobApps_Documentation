import 'package:flutter/cupertino.dart';
import 'package:job_apps/model/user_model.dart';

class UserProvider with ChangeNotifier{
  UserModel _user;

  UserModel get user => _user;

  set user(UserModel newUser){
    _user = newUser;
    notifyListeners();
  }
}