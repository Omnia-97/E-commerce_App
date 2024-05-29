import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/features/sign_in/domain/repository/signin_repo.dart';

import '../../../../core/data/errors/failures.dart';
import '../entities/ResponseEntity.dart';

class SignInUseCase {
  SignInRepo repo;
  SignInUseCase(this.repo);
  Future<Either<Failures, ResponseEntity>> call(
          String email, String password) =>
      repo.signIn(email, password);
}
