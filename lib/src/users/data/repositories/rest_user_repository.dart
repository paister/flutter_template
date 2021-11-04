import 'package:flutter_application_ddd/src/users/domain/domain.dart';
import 'package:flutter_application_ddd/src/users/data/datasources/user_datasource.dart';

class RestUserRepository extends UserRepository {
  UserDataSource remoteDataSource;
  RestUserRepository({required this.remoteDataSource});

  @override
  Future<User> getUser() async {
    // TODO: Check for connectivity and internet
    return remoteDataSource.getUser();
  }
}
