import 'package:flutter_application_ddd/src/users/domain/domain.dart';

class LoadUserUsecase {
  late UserRepository userRepository;
  LoadUserUsecase({required this.userRepository});
  Future<User> call() {
    return userRepository.getUser();
  }
}
