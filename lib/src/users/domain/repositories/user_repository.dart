import 'package:flutter_application_ddd/src/users/domain/domain.dart';

abstract class UserRepository {
  Future<User> getUser();
}
