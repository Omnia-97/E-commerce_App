import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/data/errors/failures.dart';
import 'package:e_commerce_app/features/sign_up/data/data_sources/sign_up_remote_ds.dart';
import 'package:e_commerce_app/features/sign_up/data/models/SignUpModel.dart';
import 'package:e_commerce_app/features/sign_up/domain/entities/SignUpRequestModel.dart';
import 'package:e_commerce_app/features/sign_up/domain/repository/sign_up_repo.dart';

class SignUpRepoImplement implements SignUpRepo {
  SignUpRemoteDS remoteDS;
  SignUpRepoImplement(this.remoteDS);
  @override
  Future<Either<Failures, SignUpModel>> signUp(
      SignUpRequestModel requestModel) async {
    try {
      var result = await remoteDS.signUp(requestModel);
      return Right(result);
    } catch (e) {
      return Left(
        RemoteFailure(
          e.toString(),
        ),
      );
    }
  }
}
