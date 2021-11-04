part of 'user_cubit.dart';

@immutable
abstract class UserState extends Equatable {
  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoadInProgress extends UserState {}

class UserLoadSuccess extends UserState {
  User user;
  UserLoadSuccess({
    required this.user,
  });
  @override
  List<Object> get props => [user];
}
