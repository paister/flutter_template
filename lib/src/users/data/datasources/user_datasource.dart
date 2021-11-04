import 'package:flutter_application_ddd/src/users/data/data.dart';

abstract class UserDataSource {
  Future<UserModel> getUser();
}
