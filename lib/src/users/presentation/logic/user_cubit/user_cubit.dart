import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_ddd/src/users/domain/domain.dart';
import 'package:flutter_application_ddd/src/users/domain/usecases/load_user_usecase.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final LoadUserUsecase loadUserUsecase;
  UserCubit({required this.loadUserUsecase}) : super(UserInitial());

  loadUser() async {
    emit(UserLoadInProgress());
    var user = await loadUserUsecase();
    emit(UserLoadSuccess(user: user));
  }
}
