part of 'sign_in_bloc.dart';



@immutable
class SignInState {
  RequestStatus? status;
   ResponseEntity? responseEntity;
  Failures? failures;
  SignInState({this.status, this.responseEntity, this.failures});
  SignInState copyWith({
   RequestStatus? status,
   ResponseEntity? responseEntity,
   Failures? failures,
  }
  ) {
    return SignInState(
      status: status ?? this.status,
      responseEntity: responseEntity ?? this.responseEntity,
      failures: failures ?? this.failures,
    );
  }
}

 class SignInInitialState extends SignInState {
 SignInInitialState():super(status: RequestStatus.init);
 }
