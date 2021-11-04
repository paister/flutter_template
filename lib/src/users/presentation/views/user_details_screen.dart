import 'package:flutter/material.dart';
import 'package:flutter_application_ddd/src/users/domain/domain.dart';
import 'package:flutter_application_ddd/src/users/domain/usecases/load_user_usecase.dart';
import 'package:flutter_application_ddd/src/users/data/data.dart';
import 'package:flutter_application_ddd/src/users/presentation/logic/user_cubit/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Displays detailed information about a SampleItem.
class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({Key? key}) : super(key: key);

  static const routeName = '/user-details';

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().loadUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is UserInitial) {
            return Center(
              child: Text('state is UserInitial'),
            );
          } else if (state is UserLoadInProgress) {
            return Center(
              child: Text('state is UserLoadInProgress'),
            );
          } else if (state is UserLoadSuccess) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('state is UserLoadSuccess'),
                  state.user.id != null
                      ? Text("UserId: ${state.user.id}")
                      : Text("No userId"),
                ],
              ),
            );
          }
          return Center(
            child: Text('More Information Here'),
          );
        },
      ),
    );
  }
}
