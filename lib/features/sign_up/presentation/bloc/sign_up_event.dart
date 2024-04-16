part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}

class SignUpButtonEvent extends SignUpEvent {
  SignUpRequestModel request;
  SignUpButtonEvent(this.request);
}
