import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/sign_in/data/data_sources/remote/signin_remote_ds.dart';
import 'package:e_commerce_app/features/sign_in/data/models/UserModel.dart';
import 'package:e_commerce_app/features/sign_in/domain/entities/ResponseEntity.dart';
import 'package:e_commerce_app/features/sign_in/domain/repository/signin_repo.dart';

class SignInRepoImplement implements SignInRepo {
  SignInRemoteDS signInRemoteDS;
  SignInRepoImplement(this.signInRemoteDS);
  @override
  Future<Either<Failures, ResponseEntity>> signIn(
    String email,
    String password,
  ) async {
    try {
      UserModel userModel = await signInRemoteDS.signIn(
        email,
        password,
      );
      return Right(userModel);
    } catch (e) {
      return Left(
        RemoteFailure(
          e.toString(),
        ),
      );
    }
  }
}
