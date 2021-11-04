import 'package:flutter_application_ddd/src/users/domain/domain.dart';
import 'package:flutter_application_ddd/src/users/data/datasources/user_datasource.dart';
import 'package:flutter_application_ddd/src/users/data/models/user_model.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class UserRemoteDataSource implements UserDataSource {
  late Client client;
  final Uri _url = Uri.parse("https://randomuser.me/api/");
  UserRemoteDataSource({required this.client});

  @override
  Future<UserModel> getUser() async {
    // await Future.delayed(Duration(seconds: 2));
    final res = await client.get(_url);
    print(res.body.toString());
    var data = json.decode(res.body);
    var userData = (data['results'] as List).first;
    if (res.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return UserModel.fromJson(userData);
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load user');
    }
  }
}
