part of 'sign_up_bloc.dart';

class SignUpState {
  ScreenStatus? status;
  SignUpModel? model;
  Failures? failures;
  SignUpState({this.status, this.model, this.failures});
  SignUpState copyWith({
    ScreenStatus? status,
    SignUpModel? model,
    Failures? failures,
  }) {
    return SignUpState(
      status: status ?? this.status,
      model: model ?? this.model,
      failures: failures ?? this.failures,
    );
  }
}

final class SignUpInitialState extends SignUpState {
  SignUpInitialState() : super(status: ScreenStatus.init);
}
