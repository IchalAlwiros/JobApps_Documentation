import 'package:flutter/material.dart';
import 'package:job_apps/model/user_model.dart';

class UserProvider with ChangeNotifier{
  UserModel _user; //untuk menyimpan data dari user dari api

  UserModel get user => _user;

  set user(UserModel newUser){
    _user = newUser;
    notifyListeners();
  }
}