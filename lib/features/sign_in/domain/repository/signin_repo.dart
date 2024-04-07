import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/sign_in/domain/entities/ResponseEntity.dart';

abstract class SignInRepo {
  Future<Either<Failures, ResponseEntity>> signIn(
    String email,
    String password,
  );
}
