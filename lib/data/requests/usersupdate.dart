import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/usersupdate.dart';


Future updateUser(UserUpdateModel userUpdateModel, String token) async {
  var endpoint = 'https://a0fa-197-43-75-68.ngrok-free.app/api/v1/users/update';
  debugPrint(token);
  var response = await http.put(Uri.parse(endpoint), body: {
    ...userUpdateModel.toJson()
  }, headers: {
    'Authorization': 'Bearer $token',
  });
  print(response.headers);
  print('------------------------------');
  print(response.body);
}