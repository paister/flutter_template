import 'package:flutter/material.dart';

class UserInformationPlaceholder extends StatelessWidget {
  const UserInformationPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Loading user.."),
    );
  }
}
