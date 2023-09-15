import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import '../models/usersregisters.dart';


class UserRegisterRepository {
  Future userRegister(UsersRegisterModel usersModel) async {
    var endpoint = 'https://a0fa-197-43-75-68.ngrok-free.app/api/v1/users/register';
    var response = await http.post(Uri.parse(endpoint),
        body: jsonEncode(usersModel.toJson()),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        });
    print(response.headers);
    print('------------------------------');
    print(response.body);
  }
}