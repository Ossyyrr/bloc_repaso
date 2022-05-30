part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User user;
  ActivateUser({required this.user});
}

class ChangeUserAge extends UserEvent {
  final int edad;
  ChangeUserAge({required this.edad});
}

class AddProfession extends UserEvent {
  final String profession;
  AddProfession({required this.profession});
}

class DeleteUser extends UserEvent {}
