import 'package:flutter_application_ddd/src/users/domain/domain.dart';

class UserModel extends User {
  String? id;
  UserModel({required this.id}) : super(id: id);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id']['value'],
    );
  }
}
