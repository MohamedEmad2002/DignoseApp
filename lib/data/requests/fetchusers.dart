import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/usersmodels.dart';

Future<List<UserModel>> fetchUsers(String token) async {
  var endpoint = 'https://a0fa-197-43-75-68.ngrok-free.app/api/v1/user';
  var response = await http.get(Uri.parse(endpoint), headers: {
    'Authorization': 'Bearer $token',
  });
  var allUsers = jsonDecode(response.body);
  Map test=allUsers['data'];
  List test2=[];
  test2.add(test);
  List<UserModel> userModel=[];
  for (var aUser in test2) {
    UserModel user = UserModel.fromJson(aUser);
    userModel.add(user);
  }
  return userModel;
}