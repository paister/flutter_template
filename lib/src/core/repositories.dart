import 'package:flutter/material.dart';
import 'package:flutter_application_ddd/src/users/domain/domain.dart';
import 'package:flutter_application_ddd/src/users/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' show Client;

// This widget can be used to provide global Repositories
// Initialize all repositories here to prevent cross depenedencies in features through the layers
class Repositories extends StatelessWidget {
  final Widget child;
  const Repositories({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (_) => RestUserRepository(
              remoteDataSource: UserRemoteDataSource(client: Client())),
        ),
      ],
      child: child,
    );
  }
}
