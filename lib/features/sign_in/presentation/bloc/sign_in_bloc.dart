import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/sign_in/domain/entities/ResponseEntity.dart';
import 'package:meta/meta.dart';

import '../../../../core/enums/enums.dart';
import '../../domain/use_cases/signin_use_case.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInUseCase signInUseCase;
  SignInBloc(this.signInUseCase) : super(SignInInitialState()) {
    on<SignInEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<SignInButtonEvent>((event, emit) async{
      emit(state.copyWith(status: ScreenStatus.loading));
      var result = await signInUseCase(event.email,event.password);
      result.fold((l) {
        emit(state.copyWith(status: ScreenStatus.failure, failures: l));
      } , (r) {
        emit(state.copyWith(status: ScreenStatus.success, responseEntity: r));
      });

    } );

  }

}
