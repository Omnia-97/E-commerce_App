import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/features/sign_up/domain/repository/sign_up_repo.dart';

import '../../../../core/data/errors/failures.dart';
import '../../data/models/SignUpModel.dart';
import '../entities/SignUpRequestModel.dart';

class SignUpUseCase {
  SignUpRepo repo;
  SignUpUseCase(this.repo);

  Future<Either<Failures, SignUpModel>> call(SignUpRequestModel requestModel) {
    return repo.signUp(requestModel);
  }
}
