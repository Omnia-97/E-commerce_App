part of 'sign_in_bloc.dart';

@immutable
  abstract class SignInEvent {}

class SignInButtonEvent extends SignInEvent{
  String email;
  String password;

  SignInButtonEvent(this.email, this.password);
}