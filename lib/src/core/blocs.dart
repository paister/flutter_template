import 'package:flutter/material.dart';
import 'package:flutter_application_ddd/src/users/users.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This Widget can be used to provide global Blocs or Cubits
class Blocs extends StatelessWidget {
  final Widget child;
  const Blocs({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>(
          create: (_) => UserCubit(
            loadUserUsecase: LoadUserUsecase(
              userRepository: RepositoryProvider.of<UserRepository>(context),
            ),
          ),
        ),
      ],
      child: child,
    );
  }
}
