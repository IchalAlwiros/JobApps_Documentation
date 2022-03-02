import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:job_apps/model/user_model.dart';

class AuthProvider with ChangeNotifier {
  Future<UserModel> register(
      String email, String password, String name, String goal) async {
    try {
      var body = {
        'email': email,
        'password': password,
        'name': name,
        'goal': goal,
      };

      var respon = await http.post(
        Uri.parse('https//https://bwa-jobs.herokuapp.com/register'),
        body: body,
      );

      print(respon.statusCode);
      print(respon.body);

      if (respon.statusCode == 200) {
        return UserModel.fromJson(jsonDecode(respon.body));
      } else {
        return null;
      }

    } catch (e) {
      print(e);
      return null;
    }
  }
}
