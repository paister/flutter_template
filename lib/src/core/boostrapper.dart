import 'package:flutter/material.dart';
import 'package:flutter_application_ddd/src/core/blocs.dart';
import 'package:flutter_application_ddd/src/core/repositories.dart';

class Boostrapper extends StatelessWidget {
  final Widget child;

  const Boostrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Repositories(
      child: Blocs(
        child: child,
      ),
    );
  }
}
