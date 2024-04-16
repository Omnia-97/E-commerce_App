import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/features/sign_up/data/models/SignUpModel.dart';
import '../../../../core/data/errors/failures.dart';
import '../../../../core/enums/enums.dart';
import '../../domain/entities/SignUpRequestModel.dart';
import '../../domain/use_cases/sign_up_useCase.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpUseCase signUpUseCase;
  SignUpBloc(this.signUpUseCase) : super(SignUpInitialState()) {
    on<SignUpButtonEvent>((event, emit) async {
      var result = await signUpUseCase(event.request);
      result.fold(
          (l) =>
              emit(state.copyWith(status: ScreenStatus.failure, failures: l)),
          (r) => emit(state.copyWith(status: ScreenStatus.success, model: r)));
    });
  }
}
